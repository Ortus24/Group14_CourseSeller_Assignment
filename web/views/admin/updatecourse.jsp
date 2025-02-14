<%-- 
    Document   : updatecourse
    Created on : Feb 14, 2025, 8:26:15 PM
    Author     : Nhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminaddcourse.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminlistcourse.css" />
    </head>
    <body>




        <div class="content" id="content">

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
        </div>

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



    </body>
</html>
