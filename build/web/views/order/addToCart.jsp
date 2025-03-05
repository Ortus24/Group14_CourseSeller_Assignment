<%-- 
    Document   : addToCart
    Created on : Mar 4, 2025, 9:06:13 PM
    Author     : TRAN ANH HAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:if test="${not empty requestScope.course}">
    <form action="addToCart" method="post">
        <input type="hidden" name="id" value="${requestScope.course.courseID}">
        <input type="number" name="num" value="1" min="1" class="form-control mb-2" hidden>
        <button type="submit" class="btn btn-primary">Add To Cart</button>
    </form>
</c:if>
