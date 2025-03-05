<%-- 
    Document   : confirmation
    Created on : Mar 4, 2025, 9:11:14 PM
    Author     : TRAN ANH HAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xác nhận đơn hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-4">
        <div class="alert alert-success">
            <h4 class="alert-heading">Đặt hàng thành công!</h4>
            <p>Cảm ơn bạn đã mua hàng. Mã đơn hàng của bạn là #${orderId}.</p>
            <hr>
            <a href="listcourse" class="btn btn-primary">Tiếp tục mua sắm</a>
        </div>
    </div>
    </body>
</html>
