package Servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username =  request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("RonakG") && password.equals("pta")){
            request.getSession().invalidate();
            HttpSession sess = request.getSession(true);
            sess.setMaxInactiveInterval(300);
            sess.setAttribute("username", username);
            response.sendRedirect("result.jsp");

        }else {
            response.sendRedirect("login.jsp");
        }
    }
}
