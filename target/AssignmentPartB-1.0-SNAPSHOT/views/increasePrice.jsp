<%-- 
    Document   : increasePrice
    Created on : 16-Mar-2020, 18:10:20
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
        <title>Increase Price</title>
    </head>
    <body>
        <h1>Increase Price</h1>
        <form:form method="POST" action="increasePrice" modelAttribute = "beers">
            <table border="4">

                <tr>
                    <td><form:label path="id">ID</form:label></td>
                    <td>${beers.id}</td>
                </tr>
                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td>${beers.name}</td>
                </tr>
                <tr>
                    <td><form:label path="abv">ABV</form:label></td>
                    <td>${beers.abv}</td>
                </tr>
                <tr>
                    <td><form:label path="buyPrice">Buy Price</form:label></td>
                    <td>${beers.buyPrice}</td>
                </tr>
                <tr>
                    <td><form:label path="sellPrice">Sell Price</form:label></td>
                    <td>${beers.sellPrice}</td>
                </tr>
                <tr>
                    <td><form:label path="lastMod">Last Mod</form:label></td>
                    <td>${beers.lastMod}</td>
                </tr>
                <tr>
                    <td><form:label path="description">Description</form:label></td>
                    <td>${beers.description}</td>
                </tr>
                <tr>
                    <td><form:label path="image">Image</form:label></td>
                    <td>${beers.image}</td>
                </tr>
                <tr>
                    <td><form:label path="catName">Cat Name</form:label></td>
                    <td>${beers.catName}</td>
                </tr>
                <tr>
                    <td><label for="percentageIncrease" id="percentageIncrease">Increase Price</label></td>
                    <td><input type="number" required="true"/></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Submit!"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
