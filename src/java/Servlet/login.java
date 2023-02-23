/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lum Jun Yean
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //Sign In 
            String uEmail = request.getParameter("u_email");
            
            //Email is not in database
            if (!"".equals(uEmail)){
                out.print("<html>");
                out.print("<head><style>#error_e{color: red; margin-left: 1vw; margin-top: 2vw; font-size: 1.25vw; }</style></head>");
                out.print("<body>");
                out.print("<label id='error_e' for='Register'>This email is not registered. Kindly proceed to sign up.</label>");
                out.print("</body>");
                out.print("</html>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");  
                rd.include(request, response);  
                
            }
            
            //Email is in database
            else {
                
                String uPWord = request.getParameter("u_password");
                //If it match the database
                if (uPWord.equals(uPWord)) {
                    
                    //Login
                    Cookie ck;
                    ck = new Cookie ("uEmail",uEmail);
                    response.addCookie(ck);
                    response.sendRedirect("index.jsp");
                    
                    //session
                    /*HttpSession session = request.getSession();
                    session.setAttribute("userEmail", uEmail);
                    response.sendRedirect("index.jsp");*/
                    
                }
                
                else {
                    out.print("<html>");
                    out.print("<head><style>#error_i{color: red; margin-left: 1vw; margin-top: 2vw; font-size: 1.25vw; }</style></head>");
                    out.print("<body>");
                    out.print("<label id='error_i'>Incorrect password.</label>");
                    out.print("</body>");
                    out.print("</html>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");  
                    rd.include(request, response);
                    
                }
            }
            
            //Sign Up
            String email = request.getParameter("email");
            String phoneNo = request.getParameter("phone");
            String pWord = request.getParameter("password");
            String rPWord = request.getParameter("re-password");
            
            //add to database
        }
    }

}
