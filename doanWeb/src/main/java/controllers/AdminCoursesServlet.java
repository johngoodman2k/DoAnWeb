package controllers;


import beans.Course;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCoursesServlet", urlPatterns = "/Admin/Courses/*")
public class AdminCoursesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path == null  || path.equals("/")) {
            path = "/Index";
        }
        switch (path)
        {
            case "/Index":
                List<Course> list = CourseModel.getAll();
                request.setAttribute("courses",list);
                ServletUtils.forward("/views/vwCourse/Index.jsp",request,response);
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
