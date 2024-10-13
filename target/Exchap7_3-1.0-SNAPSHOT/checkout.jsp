<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thank You for Your Purchase</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <h2>Thank You for Your Purchase!</h2>
    <p>We appreciate your business! Here are the products you bought:</p>
    
    <c:choose>
        <c:when test="${empty sessionScope.cart}">
            <p>You have no items in your cart.</p>
        </c:when>
        <c:otherwise>
            <table class="tablecart">
                <tr>
                    <th>Quantity</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Amount</th>
                </tr>
                <c:forEach var="product" items="${sessionScope.cart}">
                    <tr>
                        <td>${product.quantity}</td>
                        <td>${product.name}</td>
                        <td>${product.price}</td>
                        <td>${product.totalPrice}</td>
                    </tr>
                </c:forEach>
            </table>
            <p>Total Price: 
                <c:set var="total" value="0"/>
                <c:forEach var="product" items="${sessionScope.cart}">
                    <c:set var="total" value="${total + product.totalPrice}"/>
                </c:forEach>
                $<c:out value="${total}"/>
            </p>
            <p>Thank you for purchasing these products!</p>
        </c:otherwise>
    </c:choose>

    <br>
    <a href="index.jsp">Go back to Home</a>
</body>
</html>
