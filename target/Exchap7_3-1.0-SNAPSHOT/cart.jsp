<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <h2>Your cart</h2>
    
    <c:choose>
        <c:when test="${empty sessionScope.cart}">
            <p>Your cart is empty!</p>
        </c:when>
        <c:otherwise>
            <form action="updateCart" method="post">
                <table class="tablecart">
                    <tr>
                        <th>Quantity</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Amount</th>
                        <th></th>
                    </tr>
                    <c:forEach var="product" items="${sessionScope.cart}">
                        <tr>
                            <td>
                                <input type="number" name="quantity_${product.name}" value="${product.quantity}" min="1" style="width: 50px;">
                                <button type="submit" name="update" value="${product.name}" class="add-to-cart">Update</button>
                            </td>
                            <td>${product.name}</td>
                            <td>${product.price}</td>
                            <td>${product.totalPrice}</td>
                            <td><a href="AddToCartServlet?action=remove&Product=${product.name}">Remove</a></td>
                        </tr>
                    </c:forEach>
                </table>
                <p class="pbold">To change the quantity</p><p class="line">, enter the new quantity and click on the Update button</p>
            </form>
        </c:otherwise>
    </c:choose>
    
    <br>
    <button onclick="window.location.href='index.jsp'">Continue Shopping</button>
    <button onclick="window.location.href='checkout.jsp'">Checkout</button>
</body>
</html>
