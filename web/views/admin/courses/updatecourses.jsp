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
        <link href="${pageContext.request.contextPath}/assets/css/admin-update-courses.css" rel="stylesheet" type="text/css"/>
        <%@include file="/views/header/header.jsp" %>


    <div class="video-form">
        <div id="addModal" class="modal">
            <div class="modal-content" >
                <a>
                    <button class="back-list" id="cancelAdd">Back</button>
                </a>
                <h2>Add Video</h2>

                <form action="add-course-videos" method="post" class="container">
                    <input type="hidden" name="courseID" value="${CourseUpdate.courseID}">
                    <input type="hidden" name="page" value="${currentPage}">
                    <label for="instructor">URL</label>
                    <input type="text" id="url" name="url" required>

                    <label for="instructor">Title</label>
                    <input type="text" id="title" name="title" required>

                    <label for="instructor">Duration</label>
                    <input type="number" id="duration" name="duration" required>

                    <button class="choice" type="submit">Add Video</button>
                </form>

            </div>
        </div>
    </div>


    <div class="video-form">
        <div id="updateModal" class="modal">
            <div class="modal-content" >
                <a>
                    <button class="back-list" id="cancel-Update">Back</button>
                </a>
                <h2>Add Video</h2>

                <form action="update-course-videos" method="post" class="container">
                    <input type="hidden" name="courseID" value="${CourseUpdate.courseID}">
                    <input type="hidden" name="page" value="${currentPage}">
                    <input type="hidden" name="videoID" id="video-update">
                    <label for="instructor">URL</label>
                    <input type="text" id="url-update" name="url-update" required>

                    <label for="instructor">Title</label>
                    <input type="text" id="title-update" name="title-update" required>

                    <label for="instructor">Duration</label>
                    <input type="number" id="duration-update" name="duration-update" required>

                    <button class="choice" type="submit">Update Video</button>
                </form>

            </div>
        </div>
    </div>


    <div class="delete-video-form">
        <div id="deleteModal" class="modal">
            <div class="modal-content">
                <h1>Confirm Deletion</h1>
                <p>Are you sure you want to delete this course?</p>
                <div class="modal-buttons">
                    <button id="confirmDelete" class="delete-btn">Delete</button>
                    <button class="cancel-btn">Cancel</button>
                </div>
            </div>
        </div>
    </div>   


    <div class="sidebar" id="sidebar">
        <button class="menu-toggle" id="menuToggle">☰</button>
        <h2>Menu</h2>
        <ul>
            <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Home</li></a>
            <a href="${pageContext.request.contextPath}/listcourse"><li>Course</li></a>
            <a href="${pageContext.request.contextPath}/list-users"><li>Student</li></a>
            <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Statistical</li></a>
            <a href="${pageContext.request.contextPath}/views/home/home.jsp"><li>Setting</li></a>
        </ul>
    </div>
</head>
<body class="body-update">
    <div class="main-update" id="main-update">
        <div class="title-update">
            <h1>Update Course</h1>
            <div class="detail-title">
                <a href="${pageContext.request.contextPath}/listcourse" style="color: rgb(13, 110, 253); text-decoration: underline;">List Courses</a>
                <p style="margin: 0px 5px;">/</p>
                <p>Update</p>
            </div>
        </div>
        <div  class="detail-update">
            <div class="content">
                <a href="${pageContext.request.contextPath}/listcourse?page=${requestScope.returnPage}">
                    <button class="back-list">Back</button>
                </a>
                <h2>Course</h2>
                <form action="update-courses" method="post">
                    <c:set var="course" value="${CourseUpdate}" />
                    <input type="hidden" name="courseID" value="${CourseUpdate.courseID}">

                    <label for="instructor">Title</label>
                    <input type="text" id="title" name="title" value="${course.title}" required>

                    <label for="instructor">Description</label>
                    <input type="text" id="description" name="description" value="${course.description}" required>

                    <label for="fee">Price</label>
                    <input type="number" id="price" name="price" value="${course.price}" required>

                    <label for="instructor">Duration</label>
                    <input type="number" id="duration" name="duration" value="${course.duration}" required>

                    <label for="instructor">Thumbnail</label>
                    <input type="text" id="thumbnail" name="thumbnail" value="${course.thumbnail}" required>

                    <label for="categoryID">Semester</label>
                    <select id="categoryID" name="categoryID" >
                        <c:forEach items="${requestScope.listCourse}" var="c">
                            <option value="${c.categoryID}" ${(course.categoryID==c.categoryID) ? 'selected' : ''} >${c.categoryName}</option>
                        </c:forEach>
                    </select>
                    <label for="status">Status</label>
                    <select id="status" name="status">
                        <option value="true" ${course.status ? 'selected' : ''}>Open</option>
                        <option value="false" ${!course.status ? 'selected' : ''}>Closed</option>
                    </select>
                    <button type="submit" class="submit-update">Update</button>
                </form>
            </div>

            <div class="course-video">
                <h2>List Videos</h2>
                <a>
                    <button onclick="doAdd()">Add Video</button>
                </a>
                <table>
                    <thead>
                        <tr>
                            <th class="video-id">VideoID</th>
                            <th class="video-url">Video URL</th>
                            <th class="video-title">Title</th>
                            <th class="video-duration">Duration</th>
                            <th class="video-date">CreatedDate</th>
                            <th class="video-action"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.listCourseVideos}" var="c"><tr>
                                <td class="detail-text">${c.videoID}</td>
                                <td class="short-text">${c.videoURL}</td>
                                <td class="short-text">${c.title}</td>
                                <td class="detail-text">${c.duration}</td>
                                <td class="detail-text">${c.createdDate}</td>
                                <td>
                                    <button onclick="doUpdate(${c.videoID}, '${c.videoURL}', '${c.title}', ${c.duration})">&#9998;</button>
                                    <a href="#" onclick="doDelete(${c.videoID})"><button>&#128465;</button></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="paging">

                    <c:if test="${currentPage > 1}">
                        <a href="update-courses?courseID=${CourseUpdate.courseID}&page=${currentPage - 1}"><</a>
                    </c:if>

                    <c:forEach begin="${beforePage}" end="${afterPage}" var="i">
                        <c:choose>
                            <c:when test="${i == currentPage}">
                                <a href="update-courses?courseID=${CourseUpdate.courseID}&page=${i}" style="background-color: #505050;">${i}</a>
                            </c:when>
                            <c:otherwise>
                                <a href="update-courses?courseID=${CourseUpdate.courseID}&page=${i}">${i}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${currentPage < totalPages}">
                        <a href="update-courses?courseID=${CourseUpdate.courseID}&page=${currentPage + 1}">></a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>


        <script>

            //Add video
            function doAdd() {
                let modal = document.getElementById("addModal");
                if (modal) {
                    modal.style.display = "flex";
                }
            }
            document.getElementById("cancelAdd").addEventListener("click", function () {
                document.getElementById("addModal").style.display = "none";
            });
            //-------------//


            //Uppdate video
            let updateVideoID = null;

            function doUpdate(videoID, videoURL, videoTitle, videoDuration) {
                updateVideoID = videoID;
                document.getElementById("video-update").value = videoID;
                document.getElementById("url-update").value = videoURL;
                document.getElementById("title-update").value = videoTitle;
                document.getElementById("duration-update").value = videoDuration;
                document.getElementById("updateModal").style.display = "block";
            }

            document.getElementById("cancel-Update").addEventListener("click", function () {
                document.getElementById("updateModal").style.display = "none";
            });
            //--------------//


            //Delete video
            let deleteVideoID = null;
            function doDelete(videoID) {
                deleteVideoID = videoID;
                document.getElementById("deleteModal").style.display = "block";
            }


            document.querySelector(".cancel-btn").addEventListener("click", function () {
                document.getElementById("deleteModal").style.display = "none";
            });

            document.getElementById("confirmDelete").addEventListener("click", function () {
                if (deleteVideoID !== null) {
                    window.location.href = "delete-course-videos?videoID=" + deleteVideoID;
                }
            });

            //-------------//



         document.getElementById("menuToggle").addEventListener("click", function () {
                var sidebar = document.getElementById("sidebar");
                var content = document.getElementById("main-update");
                var menuToggle = document.getElementById("menuToggle");

                sidebar.classList.toggle("closed");
                content.classList.toggle("sidebar-closed");

                // Đổi màu nút ☰ khi menu mở
                if (!sidebar.classList.contains("closed")) {
                    menuToggle.style.background = "white";
                    menuToggle.style.color = "#212529";
                    menuToggle.style.margin = "0px 0px 0px 3px";
                    menuToggle.style.border = "none";
                } else {
                    menuToggle.style.background = "#212529";
                    menuToggle.style.color = "white";
                    menuToggle.style.margin = "0px 0px 0px 245px";
                    menuToggle.style.border = "none";
                }
            });
        </script>

</body>
</html>
