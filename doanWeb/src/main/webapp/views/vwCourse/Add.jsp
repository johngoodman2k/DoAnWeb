<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="course" scope="request" type="beans.Course"/>

<t:category>
    <jsp:body>
        <form method="post">
            <div class="card">
                <div class="card-header">
                    <h4>Course</h4>
                </div>

                <div class="card-body">

                    <div class="form-group">
                        <label for="couName">Course Name</label>
                        <input type="text" class="form-control" id="couName" name="CouName">
                    </div>
                    <div class="form-group">
                        <label for="tinyDes">TinyDes</label>
                        <input type="text" class="form-control" id="tinyDes" name="TinyDes">
                    </div>
                    <div class="form-group">
                        <label for="fullDes">FullDes</label>
                        <input type="text" class="form-control" id="fullDes" name="FullDes">
                    </div>
                    <div class="form-group">
                        <label for="rating">Rating</label>
                        <input type="text" class="form-control" id="rating" name="Rating">
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" id="price" name="Price">
                    </div>
                    <div class="form-group">
                        <label for="salePrice">SalePrice</label>
                        <input type="text" class="form-control" id="salePrice" name="SalePrice">
                    </div>
                    <div class="form-group">
                        <label for="preView">Preview</label>
                        <input type="text" class="form-control" id="preView" name="Preview">
                    </div>
                    <div class="form-group">
                        <label for="catID">Category ID</label>
                        <input type="text" class="form-control" id="catID" name="CatID">
                    </div>
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/Course/ByCat?id=1" role="button">
                        <i class="fa fa-backward" aria-hidden="true"></i>
                        List
                    </a>
                    <button type="submit" class="btn btn-outline-danger" formaction="${pageContext.request.contextPath}/Admin/Course/Delete">
                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                        Delete
                    </button>
                    <button type="submit" class="btn btn-outline-success" formaction="${pageContext.request.contextPath}/Admin/Course/Update">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Save
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:category>