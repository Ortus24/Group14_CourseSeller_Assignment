<%-- 
    Document   : addsuccessful
    Created on : Mar 5, 2025, 10:10:57 PM
    Author     : Nhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Add User</title>
        <link href="${pageContext.request.contextPath}/assets/css/admin-successful-add-users.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <img src="${pageContext.request.contextPath}/assets/images/successful.png" alt="Success" class="image">
            <h2>Successful!</h2>
            <p>New <strong>Ella Lauda</strong> user has been successfully created.</p>
            <div class="buttons">
                <a href="#" class="button back-button">&larr; Back to users</a>
                <a href="#" class="button add-button">+ Add new user</a>
            </div>
        </div>
    </body>
</html>
