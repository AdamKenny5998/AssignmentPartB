<%-- 
    Document   : viewBeerResult
    Created on : 16-Mar-2020, 15:12:29
    Author     : Adam
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Beer!</h1>
        <table style="width: 100%" border="4">
            <tr>
                
                <th align="left">ID</th>
                <th align="left">Name</th>
                <th align="left">ABV</th>
                <th align="left">Buy Price</th>
                <th align="left">Sell Price</th>
                <th align="left">Last Mod</th>
                <th align="left">Description</th>
                <th align="left">Image</th>
                <th align="left">Cat Name</th>
                <th align="left">Price Increase</th>
                
            </tr>

            <c:forEach items="${beers}" var="beer">
                <tr>
                    <td>${beer.id}</td>
                    <td>${beer.name}</td>
                    <td>${beer.abv}</td>
                    <td>${beer.buyPrice}</td>
                    <td>${beer.sellPrice}</td>
                    <td>${beer.lastMod}</td>
                    <td>${beer.description}</td>
                    <td>${beer.image}</td>
                    <td>${beer.catName}</td>
                    <td><button onclick="window.location.href = 'viewBeerById?id=${beer.id}';">Increase Price</button></td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>
