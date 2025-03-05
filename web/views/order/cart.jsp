<%-- 
    Document   : cart
    Created on : Mar 4, 2025, 4:29:01 PM
    Author     : TRAN ANH HAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-4">
        <h1>Giỏ hàng của bạn</h1>
        
        <c:choose>
            <c:when test="${empty cart.items}">
                <div class="alert alert-warning">Giỏ hàng trống!</div>
                <a href="listcourse" class="btn btn-primary">Quay lại mua sắm</a>
            </c:when>
            
            <c:otherwise>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Tên khóa học</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${cart.items}" var="item">
                            <tr>
                                <td>${item.course.title}</td>
                                <td>${item.unitPrice}00VNĐ</td>
                                <td>${item.unitPrice * item.quantity}00VNĐ</td>
                                <td>
                                    <a href="removeFromCart?id=${item.course.courseID}" 
                                       class="btn btn-danger">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3" class="text-end"><strong>Tổng cộng:</strong></td>
                            <td colspan="2">${cart.totalPrice}00VNĐ</td>
                        </tr>
                    </tfoot>
                </table>
                
                <div class="mt-3">
                    <a href="listcourse" class="btn btn-secondary">Tiếp tục mua hàng</a>
                    <a href="checkout" class="btn btn-success">Thanh toán</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
    </body>
</html>
