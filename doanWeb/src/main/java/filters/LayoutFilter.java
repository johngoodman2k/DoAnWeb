package filters;

import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter" , urlPatterns = "/*")
public class LayoutFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        List<Category> list = CategoryModel.getAll();
        request.setAttribute("categoriesWithDetails", list);
        chain.doFilter(request, response);

    }
}
