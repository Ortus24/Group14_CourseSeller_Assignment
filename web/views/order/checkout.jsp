<%-- 
    Document   : checkout
    Created on : Mar 4, 2025, 4:29:44 PM
    Author     : TRAN ANH HAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toán</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-4">
        <h1>Xác nhận thanh toán</h1>
        
        <c:if test="${empty sessionScope.user}">
            <div class="alert alert-danger">
                Vui lòng <a href="login.jsp">đăng nhập</a> để thanh toán!
            </div>
        </c:if>
        
        <c:if test="${not empty sessionScope.user}">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Thông tin đơn hàng</h5>
                    <p class="card-text">Tổng tiền: ${cart.totalPrice}00VNĐ</p>
                    <form action="checkout" method="post">
                        <div class="mb-3">
                            <label class="form-label">Họ tên:</label>
                            <input type="text" class="form-control" 
                                   value="${user.fullName}" readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email:</label>
                            <input type="email" class="form-control" 
                                   value="${user.email}" readonly>
                        </div>
                        <button type="submit" class="btn btn-primary">Xác nhận thanh toán</button>
                    </form>
                </div>
            </div>
        </c:if>
    </div>
    </body>
</html>
