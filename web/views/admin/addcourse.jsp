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

        <link rel="stylesheet" href="styles.css">



        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f6f9;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 600px;

                margin-top: 200px;
            }
            .container h2 {
                text-align: center;
                color: #333;
            }
            .container label {
                font-weight: bold;
                display: block;
                margin-top: 10px;
            }
            input, select {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }


            .choice {
                width: 100%;
                padding: 10px;
                margin-top: 20px;
                background: #007bff;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }
            .container button:hover {
                background: #0056b3;
            }

            .ba {
                background: #007bff;
                color: white;
                font-weight: bold;
                padding: 8px 12px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: 0.3s;
            }
            .ba:hover {
                background: #0056b3;
            }

        </style>
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
                    <option value="open">Đang mở</option>
                    <option value="closed">Đã đóng</option>
                </select>

                <button class="choice" type="submit">Thêm Khóa Học</button>
            </form>
        </div>
    </body>
</html>