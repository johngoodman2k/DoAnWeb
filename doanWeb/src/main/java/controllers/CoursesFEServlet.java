package controllers;

import beans.Course;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CoursesFEServlet", urlPatterns = "/Course/*")
public class CoursesFEServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path)
        {
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                List<Course> list = CourseModel.findByCatID(catID);
                request.setAttribute("courses",list);
                ServletUtils.forward("/views/vwCourse/ByCat.jsp",request,response);
                break;
            case "/Detail":
                break;
            default:
                ServletUtils.redirect("/NotFound",request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
