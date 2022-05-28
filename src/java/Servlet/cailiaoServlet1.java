/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Database.DaoFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mode.jijin;
import mode.result;
import util.Pagination;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "cailiaoServlet1", urlPatterns = {"/cailiaoServlet1"})
public class cailiaoServlet1 extends HttpServlet {

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
            String group = request.getParameter("group1");
            group="2";
            //group = java.net.URLDecoder.decode(group,"utf-8");
            ArrayList<jijin> bcs=new ArrayList<jijin>();
            ArrayList<result> bcs1=new ArrayList<result>();
            Pagination pagination=new Pagination();
            if(group.equals("1")){
                     group="计算机模拟组";
            }else if(group.equals("2")){
            group="材料组";
            }else if(group.equals("3")){
            group="光学组";
            }
            bcs=DaoFactory.getOperationDao().QueryJijin1(pagination,group);
            
            bcs1=DaoFactory.getOperationDao().QueryResult1(pagination,group);
            request.setAttribute("pagination", pagination);
            //request.setAttribute("group", group);
            
             request.setAttribute("bcs", bcs);
             request.setAttribute("bcs1", bcs1);
             request.getRequestDispatcher("cailiao.jsp").forward(request, response);
             
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
