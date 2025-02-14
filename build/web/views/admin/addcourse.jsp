<%-- 
    Document   : addcourse
    Created on : Feb 7, 2025, 4:55:12 PM
    Author     : Nhat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thêm Khóa Học</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminaddcourse.css" />
    </head>
    <body >

        <%@include file="/views/header/header.jsp" %>

        <div class="container">
            <a href="${pageContext.request.contextPath}/listcourse">
                <button class="ba">Back</button>
            </a>
            <h2>Add Course</h2>


            <form action="addcourses" method="post">
                <div style="display: flex">
                    <label for="instructor">Title</label>
                    <label style="color: red" for="course-name">${requestScope.errorTitle}</label> 
                </div>
                <input type="text" id="title" name="title" required>
                
                <label for="instructor">Description</label>
                <input type="text" id="description" name="description" required>

                <label for="fee">Price</label>
                <input type="number" id="price" name="price" required>

                <label for="instructor">Duration</label>
                <input type="number" id="duration" name="duration" required>

                <label for="instructor">Thumbnail</label>
                <input type="text" id="thumbnail" name="thumbnail" required>

                <label for="categoryID">Semester</label>
                <select id="categoryID" name="categoryID">
                    <c:forEach items="${requestScope.listCourse}" var="c">
                        <option value="${c.categoryID}">${c.categoryName}</option>
                    </c:forEach>
                </select>

                <label for="status">Trạng Thái</label>
                <select id="status" name="status">
                    <option value="1">Open</option>
                    <option value="0">Closed</option>
                </select>

                <button class="choice" type="submit">Thêm Khóa Học</button>
            </form>
        </div>
    </body>
</html>