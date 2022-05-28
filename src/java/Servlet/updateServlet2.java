/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Database.DaoFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mode.Student;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "updateServlet2", urlPatterns = {"/updateServlet2"})
public class updateServlet2 extends HttpServlet {

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
             HttpSession session=request.getSession();
            String username=(String)session.getAttribute("username");
             String sno=request.getParameter("sno");
        String sname=request.getParameter("nam");
        //String age=request.getParameter("age");
        String job=request.getParameter("job");
        String group=request.getParameter("group");
        String sex=request.getParameter("sex");
        String password=request.getParameter("pwd");
        
            session.setAttribute("username",sno);
            session.setAttribute("password",password);
        //request.setAttribute("message", "插入失败！");
             //request.getRequestDispatcher("StudentCenter_1.jsp").forward(request, response);
        //int sno,String sname,int age,String sex,String job,int classnum
        //System.out.println(sno + sname);
        
        Student stu=new Student(sno,sname,sex,job,group,password);
        //123,'徐敬坤',13,'男','普通同学',1,'666'
        //插入到数据库                                          插入学生元组数据
        
        //request.setAttribute("message", username);
             //request.getRequestDispatcher("StudentCenter_1.jsp").forward(request, response);
        
        if(DaoFactory.getOperationDao().deleteStudent(username))
        {
            if(DaoFactory.getOperationDao().insertStudent(stu))
            //request.setAttribute("message", sname);
             request.getRequestDispatcher("StudentCenter_1.jsp").forward(request, response);
        }else{
            
             request.setAttribute("message", "插入失败！");
             request.getRequestDispatcher("update.jsp").forward(request, response);
             
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
