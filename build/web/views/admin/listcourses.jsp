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
                margin: 0;
                padding: 0;
            }
            header {
                background: linear-gradient(to right, #007bff, #0056b3);
                color: white;
                padding: 20px;
                text-align: center;
            }
            /*            nav {
                            display: flex;
                            justify-content: center;
                            gap: 10px;
                            margin-top: 10px;
                        }
                        nav button {
                            background: white;
                            border: none;
                            padding: 10px 20px;
                            border-radius: 5px;
                            cursor: pointer;
                            font-weight: bold;
                            transition: 0.3s;
                        }
                        nav button:hover {
                            background: #ddd;
                        }*/
            .course-management {
                width: 80%;
                margin: 20px auto;
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin-top: 100px;
            }
            h2 {
                text-align: center;
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th, td {
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
            .choice {
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
        </style>
    </head>
    <body>
        <%@include file="/views/header/header.jsp" %>

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
                            <th>Buy</th>
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
                                <td>
                                    <c:set var="course" value="${c}" scope="request"/>
                                    <%@ include file="/views/order/addToCart.jsp" %>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </section>
        </main>
                    
        <script>
            function doDelete(courseID) {
                if (confirm("Are you want to delete category with id: " + courseID + "?")) {
                    window.location = "deletecourse?courseID=" + courseID; //gan vao href
                }
            }
        </script> 
    </body>
</html>

