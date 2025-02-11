<%-- 
    Document   : aa
    Created on : Feb 7, 2025, 1:52:08 PM
    Author     : Nhat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý Khóa học</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f6f9;
                padding: 0;
                display: flex;
            }
            
/*            body>div{
                margin-top: 90px;
            }*/

            .sidebar {
                width: 250px;
                background: #007bff;
                color: white;
                padding: 20px;
                height: 100vh;
                position: fixed;
                left: 0;
                top: 0;
                transition: transform 0.3s ease-in-out;
            }

            .sidebar.closed {
                transform: translateX(-100%);
            }

            .sidebar h2 {
                text-align: center;
            }

            .sidebar ul {
                list-style: none;
                padding: 0;
            }

            .sidebar ul li {
                padding: 10px;
                border-bottom: 1px solid rgba(255, 255, 255, 0.3);
                cursor: pointer;
            }

            .sidebar ul li:hover {
                background: rgba(255, 255, 255, 0.2);
            }

            .submenu {
                display: none;
                list-style: none;
                padding-left: 20px;
            }

            .sidebar ul li.active .submenu {
                display: block;
            }

            .menu-toggle {
                position: absolute;
                top: 10px;
                left: 260px;
                background: #007bff;
                color: white;
                border: none;
                padding: 10px;
                cursor: pointer;
                transition: left 0.3s ease-in-out;

            }

            .sidebar.closed+.menu-toggle {
                left: 10px;
            }

            .content {
                margin-left: 270px;
                flex-grow: 1;
                padding: 20px;
                transition: margin-left 0.3s ease-in-out;
            }

            .sidebar.closed~.content {
                margin-left: 20px;
            }

            header {
                background: linear-gradient(to right, #007bff, #0056b3);
                color: white;
                padding: 20px;
                text-align: center;
            }

            .course-management {
                width: 80%;
                margin: 20px auto;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }



            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th,
            td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background: #007bff;
                color: white;
            }

            .status {
                color: green;
                font-weight: bold;
            }

            button {
                padding: 8px 12px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: 0.3s;
            }

            .course-management button {
                background: #007bff;
                color: white;
                font-weight: bold;
            }

            .course-management button:hover {
                background: #0056b3;
            }

            td button {
                background: #28a745;
                color: white;
            }

            td button:hover {
                background: #218838;
            }

            td button:last-child {
                background: #dc3545;
            }

            td button:last-child:hover {
                background: #c82333;
            }

            .menu-toggle {
                position: absolute;
                top: 10px;
                left: 260px;
                background: #007bff;
                color: white;
                border: none;
                padding: 10px;
                cursor: pointer;
            }
        </style>
        <%--<%@include file="/views/header/header.jsp" %>--%>
    </head>

    <body>
        
        

        <div class="sidebar" id="sidebar">
            <button class="menu-toggle" id="menuToggle">☰</button>
            <h2>Menu</h2>
            <ul>
                <li>Trang Chủ</li>
                <li class="has-submenu">Khóa Học
                    <ul class="submenu">
                        <li>Danh sách khóa học</li>
                        <li>Thêm khóa học</li>
                    </ul>
                </li>
                <li>Học Viên</li>
                <li>Thống Kê</li>
                <li>Cài Đặt</li>
            </ul>
        </div>



        <div class="content" id="content">


            <main>
                <section class="course-management">
                    <h2>List Courses</h2>

                    <a href="${pageContext.request.contextPath}/addcourse">
                        <button class="choice">Add Course</button>
                    </a>

                    <table>
                        <thead>
                            <tr>
                                <th>CourseID</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>CreatedDate</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listcourse}" var="c"><tr>
                                    <td>${c.courseID}</td>
                                    <td>${c.title}</td>
                                    <td>${c.description}</td>
                                    <td>${c.price}.000VNĐ</td>
                                    <td>${c.createdDate}</td>
                                    <td class="status">Đang mở</td>
                                    <td>
                                        <button class="choice">Edit</button>

                                        <a href="#" onclick="doDelete(${c.courseID})"><button class="choice">Delete</button></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>
            </main>
        </div>

        <script>

            function doDelete(courseID) {
                if (confirm("Are you want to delete category with id: " + courseID + "?")) {
                    window.location = "deletecourse?courseID=" + courseID; //gan vao href
                }
            }
            document.getElementById("menuToggle").addEventListener("click", function () {
                var sidebar = document.getElementById("sidebar");
                var content = document.getElementById("content");
                var menuToggle = document.getElementById("menuToggle");

                sidebar.classList.toggle("closed");
                content.classList.toggle("sidebar-closed");

                // Đổi màu nút ☰ khi menu mở
                if (!sidebar.classList.contains("closed")) {
                    menuToggle.style.background = "white";
                    menuToggle.style.color = "#007bff";
                    menuToggle.style.left = "10px";
                } else {
                    menuToggle.style.background = "#007bff";
                    menuToggle.style.color = "white";
                    menuToggle.style.left = "300px";
                }
            });

            window.onload = function () {
                var sidebar = document.getElementById("sidebar");
                var menuToggle = document.getElementById("menuToggle");
                menuToggle.style.left = "300px";

                // Đảm bảo sidebar bắt đầu ở trạng thái ẩn
                sidebar.classList.add("closed");


            };


        </script>

    </body>

</html>