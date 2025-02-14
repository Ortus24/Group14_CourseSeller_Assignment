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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminlistcourse.css" />

        <!--        <style>
                    .pagingcourse{
                        text-align: right;
                        margin-right: 100px; 
                        margin-top: 10px;
                    }
                </style>-->
    </head>

    <body>

        <%@include file="/views/header/header.jsp" %>

        <div class="sidebar" id="sidebar">
            <button class="menu-toggle" id="menuToggle">☰</button>
            <h2>Menu</h2> 
            <ul>
                <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Home</li></a>
                <a href="${pageContext.request.contextPath}/listcourse"><li>Course</li></a>
                <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Student</li></a>
                <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Statistical</li></a>
                <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Setting</li></a>
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
                                    <td class="des">${c.description}</td>
                                    <td>${c.price}.000VNĐ</td>
                                    <td>${c.createdDate}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${c.status}">
                                                <p class="open">Open</p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="closed">Closed</p>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <button>Edit</button>
                                        <a href="#" onclick="doDelete(${c.courseID})"><button>Delete</button></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="paging">
                        <!-- Nút về trang trước -->
                        <c:if test="${currentPage > 1}">
                            <a href="listcourse?page=${currentPage - 1}"><</a>
                        </c:if>

                        <!-- Hiển thị các trang gần nhất -->
                        <c:forEach begin="${beforePage}" end="${afterPage}" var="i">
                            <c:choose>
                                <c:when test="${i == currentPage}">
                                    <a href="listcourse?page=${i}" style="background-color: #5838fc;">${i}</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="listcourse?page=${i}">${i}</a>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>


                        <!-- Nút tới trang sau -->
                        <c:if test="${currentPage < totalPages}">
                            <a href="listcourse?page=${currentPage + 1}">></a>
                        </c:if>
                    </div>
                </section>

            </main>
        </div>

        <script>
            function doDelete(courseID) {
                if (confirm("Are you sure you want to delete the category with ID: " + courseID + "?")) {
                    window.location.href = "deletecourse?courseID=" + courseID;
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
                    menuToggle.style.left = "260px";
                }
            });

            window.onload = function () {
                var sidebar = document.getElementById("sidebar");
                var menuToggle = document.getElementById("menuToggle");
                menuToggle.style.background = "#007bff";
                menuToggle.style.color = "white";
                menuToggle.style.left = "260px";
                sidebar.classList.add("closed");
            };


        </script>

    </body>

</html>