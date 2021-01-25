package controllers;


import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminCoursesServlet", urlPatterns = "/Admin/Course/*")
public class AdminCoursesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path)
        {
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                List<Course> list = CourseModel.findByCatID(catID);
                request.setAttribute("courses",list);
                ServletUtils.forward("/views/vwCourse/Index.jsp",request,response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwCourse/Add.jsp", request, response);
                break;
            case "/Edit":
                int couID = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findByID(couID);
                if (c.isPresent()) {
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwCourse/Edit.jsp", request, response);
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
        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addCourse(request, response);
                break;
            case "/Delete":
                deleteCourse(request, response);
                break;
            case "/Update":
                updateCourse(request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }

    private void addCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("CouName");
        String tinyDes = request.getParameter("TinyDes");
        String fullDes = request.getParameter("FullDes");
        float rating = Float.parseFloat(request.getParameter("Rating"));
        int price = Integer.parseInt(request.getParameter("Price"));
        String salePrice = request.getParameter("SalePrice");
        String preview = request.getParameter("Preview");
        int catID = Integer.parseInt(request.getParameter("CatID"));

        Course c = new Course(-1, name , tinyDes , fullDes, rating, price ,salePrice, preview, catID);
        CourseModel.add(c);
        ServletUtils.forward("/views/vwCourse/Add.jsp", request, response);
    }

    private void deleteCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CouID"));
        int catID = Integer.parseInt(request.getParameter("CatID"));


        CategoryModel.delete(id);
        ServletUtils.redirect("/Admin/Course/ByCat?id=1", request, response);
    }

    private void updateCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CouID"));
        String couName = request.getParameter("CouName");
        String tinyDes = request.getParameter("TinyDes");
        String fullDes = request.getParameter("FullDes");
        float rating = Float.parseFloat(request.getParameter("Rating"));
        int price = Integer.parseInt(request.getParameter("Price"));
        String salePrice = request.getParameter("SalePrice");
        String preview = request.getParameter("Preview");
        int catID = Integer.parseInt(request.getParameter("CatID"));

        Course c = new Course(id, couName , tinyDes , fullDes, rating, price ,salePrice, preview, catID);
        CourseModel.update(c);
        ServletUtils.redirect("/Admin/Course/ByCat?id=1", request, response);
    }
}
