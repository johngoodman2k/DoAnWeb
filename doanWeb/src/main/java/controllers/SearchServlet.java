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

@WebServlet(name = "SearchServlet", urlPatterns = "/Search/*")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":
                String couName = request.getParameter("txtSearch");

                List<Course> list = CourseModel.searchByName(couName);

                request.setAttribute("keyword", couName);
                request.setAttribute("listSearch", list);
                ServletUtils.forward("/views/vwSearch/Search.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String path = request.getPathInfo();
//        switch (path) {
//            case "/Index":
//                searchCourse(request, response);
//                break;
//            default:
//                ServletUtils.redirect("/NotFound", request, response);
//                break;

    }
}
//
//    private void searchCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String search = request.getParameter("txtSearch");
//        List<Course> list = CourseModel.searchByName(search);
//        request.setAttribute("listCourse",list);
//
//        ServletUtils.forward("/views/vwSearch/Search.jsp", request, response);
//    }

