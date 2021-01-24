package controllers;

import beans.Course;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

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
                int couID = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findByID(couID);
                if (c.isPresent()) {
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwCourse/Detail.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Home", request, response);
                }
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
