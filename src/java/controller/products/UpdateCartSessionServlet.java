/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.products;

import dal.ApplicationDAO;
import dal.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Application;
import model.Cart;
import model.CartItems;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="UpdateCartSessionServlet", urlPatterns={"/ucss"})
public class UpdateCartSessionServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateCartSessionServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCartSessionServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie[] cookies2 = request.getCookies();
        HttpSession session3 = request.getSession();
        HttpSession session4 = request.getSession(false);
        updateSS(cookies2,session3,session4);
        response.sendRedirect("cardAdd");
        
    }
private void updateSS(Cookie[] cookies,HttpSession session3,HttpSession session4) {
        //dữ liệu trả về
        String cartData = "";

        //xác định xem trong giỏ có gì không
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("cart")) {
                    cartData = cookie.getValue();
                    break;
                }
            }
        }

        List<CartItems> cartItems = new ArrayList<>();
        float totalPrice = 0;

        // Phân tích chuỗi cookie
        if (!cartData.isEmpty()) {
            String[] items = cartData.split("/");
            for (String item : items) {
                String[] parts = item.split(":");
                if (parts.length == 3) {

                    try {

                        int user = Integer.parseInt(parts[0]);
                        int quantity = Integer.parseInt(parts[1]);
                        float price = quantity * Float.parseFloat(parts[2]);

                        totalPrice += price;

                        boolean userExists = false;
                        for (int i = 0; i < cartItems.size(); i++) {
                            if (user == cartItems.get(i).getAppID()) {
                                // Cập nhật quantity và price nếu user đã tồn tại
                                cartItems.get(i).setQuantity(cartItems.get(i).getQuantity() + quantity);
                                cartItems.get(i).setPrice(cartItems.get(i).getPrice() + price);
                                userExists = true;
                                break;
                            }
                        }

                        // Thêm đối tượng mới nếu user không tồn tại
                        if (!userExists) {
                            CartItems sNew = new CartItems(user, quantity, price);
                            cartItems.add(sNew);
                        }
                    } catch (NumberFormatException e) {
                        System.out.println(e);
                    }

                }
            }
        }
        // Đặt dữ liệu phân tích vào request attribute
        CartDAO cd = new CartDAO();

        if (session4 == null) {
            // Phiên không tồn tại
            System.out.println("Session does not exist.");
        } else {
            // Phiên tồn tại, kiểm tra thuộc tính "account"
            User user = (User) session4.getAttribute("account");
            if (user == null) {
                System.out.println("Session exists but user attribute does not exist.");
            } else {
                System.out.println("Session exists and user attribute is: " + user.getUserName());
                //check exsit????

                LocalDateTime date = LocalDateTime.now();
                Cart cNew = new Cart(user.getUserId(), date, cartItems.size());
                cd.insert(cNew);              
                Cart c = cd.getCardByUserID(user.getUserId());
                
                //add cartId to CartItems
                for (int i = 0; i < cartItems.size(); i++) {
                    cartItems.get(i).setCartID(c.getCartID());
                    // Kiểm tra và cập nhật hoặc thêm mới vào cơ sở dữ liệu
                CartItems existingItem = cd.getCardItemsByCardID(c.getCartID(), cartItems.get(i).getAppID());
                    if (existingItem != null) {
                        existingItem.setQuantity(cartItems.get(i).getQuantity());
                        cd.update(existingItem);
                    } else {
                        cd.insert(cartItems.get(i));
                    }
                }

            }
        }
        
        ApplicationDAO ad = new ApplicationDAO();
        List<Application> appList = ad.getListApp();
        
        session3.setAttribute("cartItems", cartItems);
        session3.setAttribute("appList", appList);
        totalPrice = Math.round(totalPrice * 100.0f) / 100.0f;
        session3.setAttribute("totalPrice", totalPrice);
        
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
