<%-- 
    Document   : error
    Created on : Mar 4, 2025, 9:11:55 PM
    Author     : TRAN ANH HAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lỗi</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-4">
        <div class="alert alert-danger">
            <h4 class="alert-heading">Đã xảy ra lỗi!</h4>
            <p>${errorMessage}</p>
            <hr>
            <a href="listcourse" class="btn btn-primary">Quay lại trang chủ</a>
        </div>
    </div>
    </body>
</html>
