<%--
  Created by IntelliJ IDEA.
  User: koncole
  Date: 21.12.2017
  Time: 10:22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kiosk</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" type="text/css">

</head>
    <g:form url="[resource:customerInstance, action:'customerLookup']" >
        <g:render template="kioskForm"/>
    </g:form>

    <g:javascript library="jquery"/>
    <script  href="${resource(dir: 'js', file: 'bootstrap.min.js')}" ></script>

<body>

</body>
</html>