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
        <title>Add Course</title>
        <link href="${pageContext.request.contextPath}/assets/css/admin-add-course.css" rel="stylesheet" type="text/css"/>
        <style>
/*            .back-list {
                background: #8A8A8A;
                color: white;
                font-weight: bold;
                padding: 8px 12px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: 0.3s;
            }
            .back-list:hover {
                background: #0056b3;
            }*/
        </style>
    </head>
    <body class="body-add-course">

        <%@include file="/views/header/header.jsp" %>

        <div class="container">
            <a href="${pageContext.request.contextPath}/listcourse">
                <button class="back-list">Back</button>
            </a>
            <h2>Add Course</h2>


            <form action="add-courses" method="post">
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

                <label for="status">Status</label>
                <select id="status" name="status">
                    <option value="true">Open</option>
                    <option value="false">Closed</option>
                </select>
                <button class="choice" type="submit">Add Course</button>
            </form>
        </div>
    </body>
</html>