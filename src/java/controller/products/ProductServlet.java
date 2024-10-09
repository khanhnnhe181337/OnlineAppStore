/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.products;

import dal.ApplicationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Application;
import model.Category;
import model.Developer;
import model.Images;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet ProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        ApplicationDAO ad = new ApplicationDAO();
        int id;
        try {
            id = Integer.parseInt(id_raw);
            Application a = ad.getAppByID(id);
            List<Application> appList = ad.getListApp();
            List<Developer> devList = ad.getListDeveloper();
            List<Category> cateList = ad.getListCategory();
            List<Images> imgList = ad.getListImgById(id);
            
            request.setAttribute("devList", devList);
            request.setAttribute("cateList", cateList);
            request.setAttribute("imgList", imgList);
            request.setAttribute("appList", appList);
            
            //date 
            String date = a.getReleaseDate();
            String substring = date.substring(0, date.indexOf(" "));
            a.setReleaseDate(substring);

            request.setAttribute("appInfo", a);

            request.getRequestDispatcher("productDetail.jsp").forward(request, response);
        } catch (Exception e) {
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String appId = request.getParameter("appId");
        String qty_raw = request.getParameter("qty");
        String price_raw = request.getParameter("price");

        int quantity;
        float price;
        try {
            quantity = Integer.parseInt(qty_raw);
            price = Float.parseFloat(price_raw);
            Cookie[] arr = request.getCookies();

            String txt = "";
            if (arr != null) {

                for (Cookie o : arr) {
                    if (o.getName().equals("cart")) {
                        txt += o.getValue();
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }

            }
            if (txt.isEmpty()) {
                txt = appId + ":" + quantity + ":" + price;
            } else {
                txt += "/" + appId + ":" + quantity + ":" + price;
            }
            Cookie c = new Cookie("cart", txt);
            c.setMaxAge(200);
            response.addCookie(c);
            
            response.sendRedirect("header?id="+appId);
        } catch (Exception e) {
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
