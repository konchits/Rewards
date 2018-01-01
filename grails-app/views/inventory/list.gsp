<%--
  Created by IntelliJ IDEA.
  User: koncole
  Date: 19.12.2017
  Time: 11:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List of Products</title>
</head>

<body>
    <table border="1">
        <tr>
            <th > Name </th>
            <th > SKU </th>
            <th > Price </th>
        </tr>
        <g:each in="${allProducts}" var="product">
            <tr>
                <td >${product.name}</td>
                <td >${product.sku}</td>
                <td >${product.price}</td>
            </tr>
        </g:each>
    </table>
</body>
</html>