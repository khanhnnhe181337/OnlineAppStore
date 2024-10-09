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
import java.util.List;
import model.Application;
import model.Category;
import model.Developer;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UpdateAppServlet", urlPatterns = {"/updateApp"})
public class UpdateAppServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateAppServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAppServlet at " + request.getContextPath() + "</h1>");
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
        int id;
        ApplicationDAO ad = new ApplicationDAO();
        try {
            id = Integer.parseInt(id_raw);
            Application a = ad.getAppByID(id);
            request.setAttribute("aFound", a);

            //display tables
            List<Application> appList = ad.getListApp();
            List<Developer> devList = ad.getListDeveloper();
            List<Category> cateList = ad.getListCategory();

            request.setAttribute("appList", appList);
            request.setAttribute("devList", devList);
            request.setAttribute("cateList", cateList);

            request.getRequestDispatcher("table.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);
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
        request.setCharacterEncoding("UTF-8");
        String raw_id = request.getParameter("id");
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

        int id, age, devid, cateid, count;
        float price, salary;

        ApplicationDAO ad = new ApplicationDAO();
        try {
            id = Integer.parseInt(raw_id);
            age = Integer.parseInt(age_raw);
            price = Float.parseFloat(price_raw);
            devid = Integer.parseInt(dev_raw);
            salary = Float.parseFloat(salary_raw);
            cateid = Integer.parseInt(cate_raw);
            count = Integer.parseInt(count_raw);
            Application aNew = new Application(id, name,
                    devid, cateid, descr,
                    date, price, img, link,
                    count, salary, ram, disk,
                    vga, cpu, os, age);

            ad.update(aNew);
            response.sendRedirect("tables");

        } catch (NumberFormatException e) {
            System.out.println(e);
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
