/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin.applications.images;

import dal.ApplicationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
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
@WebServlet(name="AddImagesServlet", urlPatterns={"/addImages"})
public class AddImagesServlet extends HttpServlet {
   
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
            out.println("<title>Servlet AddImagesServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddImagesServlet at " + request.getContextPath () + "</h1>");
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
        String AppId = request.getParameter("id");
        ApplicationDAO ad = new ApplicationDAO();
        int i;
        try {
            i = Integer.parseInt(AppId);
            
            System.out.println(i);
            
            List<Images> imgList = ad.getListImgById(i);
            List<Developer> devList = ad.getListDeveloper();
            List<Category> cateList = ad.getListCategory();
            
            request.setAttribute("id", AppId);
            

            request.setAttribute("devList", devList);
            request.setAttribute("cateList", cateList);
            request.setAttribute("imgList", imgList);
            
            request.getRequestDispatcher("addImg.jsp").forward(request, response);
        } catch (Exception e) {
        }
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
        String AppId = request.getParameter("id");
        String link = request.getParameter("link");
        String descr = request.getParameter("descr");
        ApplicationDAO ad = new ApplicationDAO();
        int i;
        try {
            i = Integer.parseInt(AppId);
            Images img = new Images( i, link, descr);
            ad.insert(img);
            response.sendRedirect("addImages?id="+AppId);
        } catch (Exception e) {
            System.out.println(e);
        }
        
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
