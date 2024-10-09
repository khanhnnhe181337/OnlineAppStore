/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="AddUserServlet", urlPatterns={"/addUser"})
public class AddUserServlet extends HttpServlet {
   
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
            out.println("<title>Servlet AddUserServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddUserServlet at " + request.getContextPath () + "</h1>");
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
        request.getRequestDispatcher("addUser.jsp").forward(request, response);
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
        String email = request.getParameter("email");
       String user = request.getParameter("user");
       String pass = request.getParameter("pass");
       String re_pass = request.getParameter("re-pass");
       String age_raw = request.getParameter("age");
       int id=0,age=0;
       DAO d = new DAO();
        if (!(re_pass.equals(pass))) {
            request.setAttribute("error", "Your pass is not match");
            request.getRequestDispatcher("addUser.jsp").forward(request, response);
        }else{
            
        
       User find = d.getUserByName(user,email);
        try {
            age = Integer.parseInt(age_raw);
            if (find==null) {
                for (int i = 0; i < 999; i++) {
                    if (d.getUserByID(i)==null) {
                        id=i;
                        break;
                    }
                }
              //add
              User newU = new User(id, user, pass, email, "DEFAULT", age, 0);
              d.insert(newU);
              request.setAttribute("notication", "Add new account succesfuly!");
              request.getRequestDispatcher("addUser.jsp").forward(request, response);
            }else if (d.getUserByName(user,email)!=null){
            request.setAttribute("error", "The email address or user name you entered already exist!");
            request.getRequestDispatcher("addUser.jsp").forward(request, response);
            }
        } catch (Exception e) {
            
        }
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
