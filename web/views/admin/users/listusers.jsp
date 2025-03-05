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
        <link href="${pageContext.request.contextPath}/assets/css/admin-list-users.css" rel="stylesheet" type="text/css"/>
        <%@include file="/views/header/header.jsp" %>


    <div id="deleteModal" class="modal">
        <div class="modal-content" style="width: 35%;
             padding: 3% 20px;
             border-radius: 39px;">
            <h1>Confirm Deletion</h1>
            <p>Are you sure you want to delete this course?</p>
            <div class="modal-buttons">
                <form id="deleteForm" action="delete-user" method="post">
                    <input type="hidden" name="userIds" id="userIds">
                    <button id="confirmDelete" class="delete-btn">Delete</button>
                    <button class="cancel-btn" id="cancel-delete-user">Cancel</button>
                </form>
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
            <h1>List Users</h1>
            <div class="detail-title">
                <a href="${pageContext.request.contextPath}/list-users" style="color: rgb(13, 110, 253); text-decoration: underline;">Users</a>
                <p style="margin: 0px 5px;">/</p>
                <p>List Users</p>
            </div>

            <div class="main-content">
                <div class="crud">  
                    <h2>Users</h2>
                    <div>   
                        <button type="button" class="delete-user" id="delete-user">Delete</button>
                        
                        <a href="${pageContext.request.contextPath}/add-users">
                        <button class="add-user" > + Add user</button>
                        </a>
                    </div>
                </div>

                <div class="stats">
                    <div class="stat-box">
                        <h3>Total Users</h3>
                        <p>${requestScope.totalUsers}</p>
                    </div>
                    <div class="stat-box">
                        <h3>Active Members</h3>
                        <p>12 </p>
                    </div>
                    <div class="stat-box">
                        <h3>New / Returning</h3>
                        <p>56% </p>
                    </div>
                    <div class="stat-box">
                        <h3>Active Members</h3>
                        <p>28%</p>
                    </div>
                </div>
                <div class="user-table">
                    <form action="list-users" method="post" class="search-users">
                        <input type="text" class="search" name="searchQuery" id="search" placeholder="Search users" value="${param.searchQuery}">
                        <button type="submit" class="input-search">Search</button>
                    </form>
                    <table>
                        <thead>
                            <tr>
                                <th><input type="checkbox" onclick="document.querySelectorAll('.user-checkbox').forEach(cb => cb.checked = this.checked); toggleDeleteButton();"></th>
                                <th>Name</th>
                                <th>Role</th>
                                <th>Amount</th>
                                <th>Email</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listUsers}" var="c">
                                <tr>
                                    <td><input type="checkbox" class="user-checkbox" data-userid="${c.userName}" onclick="toggleDeleteButton()"></td>
                                    <td>${c.fullName}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${c.roleId == 2   }">
                                                <p>Admin</p>
                                            </c:when>
                                            <c:otherwise>
                                                <p>User</p> 
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>${requestScope.a}</td>
                                    <td>${c.email}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${c.status}">
                                                <p class="online">Online</p>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="offline">Offline</p> 
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td><button class="edit">&#9998;</button></td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <form action="list-users" method="post" class="paging">
                        <input type="hidden" class="search" name="searchQuery" id="search" placeholder="Search users" value="${param.searchQuery}">
                        <!-- Nút về trang trước -->
                        <c:if test="${currentPage > 1}">
                            <button type="submit" name="page" value="${currentPage - 1}"><</button>
                        </c:if>

                        <!-- Hiển thị các trang gần nhất -->
                        <c:forEach begin="${beforePage}" end="${afterPage}" var="i">
                            <c:choose>
                                <c:when test="${i == currentPage}">
                                    <input type="submit" name="page"  style="background-color: #3A3A3A;" value="${i}" >
                                </c:when>
                                <c:otherwise>
                                    <input type="submit" name="page" value="${i}" >
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>


                        <!-- Nút tới trang sau -->
                        <c:if test="${currentPage < totalPages}">
                            <button type="submit" name="page" value="${currentPage + 1}">></button>
                        </c:if>
                    </form>
                </div>
            </div>
        </div>

    </div>


    <script>

        function searchUsers() {
            let query = document.getElementById("searchBox").value;
            if (query !== null) {
                window.location.href = "listcourse";
            }
        }

        function toggleDeleteButton() {
            const checkboxes = document.querySelectorAll('.user-checkbox:checked');
            document.getElementById('delete-user').style.display = checkboxes.length > 0 ? 'inline-block' : 'none';
        }

        document.getElementById("delete-user").addEventListener("click", function () {
            let selectedUsers = [];
            document.querySelectorAll(".user-checkbox:checked").forEach(cb => {
                selectedUsers.push(cb.getAttribute("data-userid"));
            });

            if (selectedUsers.length > 0) {
                document.getElementById("userIds").value = selectedUsers.join(",");
                document.getElementById("deleteModal").style.display = "block";
                document.querySelector(".cancel-btn").addEventListener("click", function () {
                    document.getElementById("deleteForm").addEventListener("submit", function (event) {
                        if (event.submitter && event.submitter.id === "cancel-delete-user") {
                            event.preventDefault();
                            document.getElementById("deleteModal").style.display = "none";
                        }
                    });
                });

            } else {
                alert("Vui lòng chọn ít nhất một người dùng để xóa!");
            }
        });

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
