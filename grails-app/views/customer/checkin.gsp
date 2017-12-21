<%--
  Created by IntelliJ IDEA.
  User: koncole
  Date: 21.12.2017
  Time: 10:22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Kiosk</title>
    <%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"> --%>

</head>
    <g:form url="[resource:customerInstance, action:'customerLookup']" >
        <g:render template="kioskForm"/>
    </g:form>

    <g:javascript library="jquery"/>
    <script  href="${resource(dir: 'js', file: 'bootstrap.min.js')}" ></script>

<body>

</body>
</html>