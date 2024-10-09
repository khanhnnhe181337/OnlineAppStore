/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin.applications;

import dal.ApplicationDAO;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import model.Application;
import model.Category;
import model.Developer;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="AddApplicationServlet", urlPatterns={"/addApp"})
public class AddApplicationServlet extends HttpServlet {
   
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
            out.println("<title>Servlet AddApplicationServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddApplicationServlet at " + request.getContextPath () + "</h1>");
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
        DAO d = new DAO();
        ApplicationDAO ad= new ApplicationDAO();
        List<User> list = d.getListUser();
        List<Application> appList = ad.getListApp();
        List<Developer> devList = ad.getListDeveloper();
        List<Category> cateList = ad.getListCategory();
        
        request.setAttribute("userList", list);
        request.setAttribute("appList", appList);
        request.setAttribute("devList", devList);
        request.setAttribute("cateList", cateList);
        
        request.getRequestDispatcher("addApp.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
       String name = request.getParameter("name");
        String age_raw = request.getParameter("age");
        String dev_raw = request.getParameter("dev");
        String price_raw = request.getParameter("price");
        String date = request.getParameter("date");
        String cate_raw = request.getParameter("cate");
        String img = request.getParameter("img");
        String link = request.getParameter("link");
        String count_raw = request.getParameter("count");
        String salary_raw = request.getParameter("salary");
        String ram = request.getParameter("ram");
        String disk = request.getParameter("disk");
        String vga = request.getParameter("vga");
        String cpu = request.getParameter("cpu");
        String os = request.getParameter("os");
        String descr = request.getParameter("descr");
        
        int age, devid,cateid,count;
        float price,salary;
        
        ApplicationDAO ad = new ApplicationDAO();
        try {
            age = Integer.parseInt(age_raw);
            price = Float.parseFloat(price_raw);
            devid = Integer.parseInt(dev_raw);
            salary = Float.parseFloat(salary_raw);
            cateid = Integer.parseInt(cate_raw);
            count = Integer.parseInt(count_raw);
            
            
             // Chuỗi ngày tháng dạng YYYY-MM-DD
        String dateString = date;
        
        // Định dạng ngày tháng của bạn (ví dụ: "yyyy-MM-dd")
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        
         // Chuyển đổi chuỗi thành java.util.Date
            Date parsedDate = dateFormat.parse(dateString);
            
            // Chuyển đổi java.util.Date thành java.sql.Timestamp
            Timestamp timestamp = new Timestamp(parsedDate.getTime());
            
            // In ra giá trị timestamp
            System.out.println("Timestamp: " + timestamp);
            
        SimpleDateFormat fullDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        
        // Chuyển đổi Timestamp thành chuỗi
        String fullFormattedDate = fullDateFormat.format(timestamp);
        
        // In ra chuỗi ngày giờ
        System.out.println("Full Formatted Date: " + fullFormattedDate);
            
            
            
            Application aNew = new Application(name, 
                    devid, cateid, descr, 
                    fullFormattedDate, price, img, link, 
                    count, salary, ram, disk, 
                    vga, cpu, os, age);
            System.out.println(aNew.getAppName());
            ad.insert(aNew);
            response.sendRedirect("tables");

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
