package Servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "resultController", value = "/resultController")
public class resultController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){

            case "destroy":
                request.getSession().invalidate();
                /* Cookie[] cookies = request.getCookies();
                for (Cookie i : cookies){
                    if(i.getName().equals("username")){
                        i.setValue(null);
                        i.setMaxAge(0);
                        response.addCookie(i);
                    }

                }*/
                response.sendRedirect("login.jsp");
            break;

            default: break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
