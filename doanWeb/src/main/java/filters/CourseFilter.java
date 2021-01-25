package filters;

import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;
import utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebFilter(filterName = "CourseFilter")
public class CourseFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        List<Course> list = CourseModel.getAll();
        request.setAttribute("coursesWithDetails", list);
        chain.doFilter(request, response);
    }
}
