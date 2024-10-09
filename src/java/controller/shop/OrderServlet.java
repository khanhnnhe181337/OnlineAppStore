/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.shop;

import dal.ApplicationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Application;
import model.CartItems;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="OrderServlet", urlPatterns={"/order"})
public class OrderServlet extends HttpServlet {
   
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
            out.println("<title>Servlet OrderServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderServlet at " + request.getContextPath () + "</h1>");
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
        Cookie[] cookies = request.getCookies();
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
        ApplicationDAO ad = new ApplicationDAO();
        for (int i = 0; i < cartItems.size(); i++) {
            ad.updateAppInfo(cartItems.get(i).getPrice(), cartItems.get(i).getQuantity(), cartItems.get(i).getAppID());
            
        }
        System.out.println(cartItems);
        response.sendRedirect("deleteOrder");
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
