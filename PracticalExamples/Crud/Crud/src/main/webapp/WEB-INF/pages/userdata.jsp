<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>User Data</title>

    <style type="text/css">
        .features-table
        {
            width: 70%;
            margin: 0 auto;
            border-collapse: separate;
            border-spacing: 0;
            border: 0;
            text-shadow: 0 1px 0 #fff;
            color: #2a2a2a;
            background: #fafafa;
            margin-top:20px;
            margin-bottom:20px;
        }

        .features-table td
        {
            height: 50px;
            padding: 0 20px;
            border-bottom: 1px solid #cdcdcd;
            box-shadow: 0 1px 0 white;
            text-align: center;
            vertical-align: middle;
            display: table-cell;
            text-align: center;
            width: 150px;
            border-right: 1px solid white;
        }

        .features-table .param
        {
            font-size: 120%;
            font-weight: bold;
            border-top: 1px solid #eaeaea;
            background: #efefef;
            background: rgba(144,144,144,0.15);
        }

        .features-table tr:last-child td {
            -webkit-border-radius: 0 0 12px 12px;
            border-radius: 0 0 12px 12px;
        }

        .features-table tr:first-child td {
            -webkit-border-radius: 12px 12px 0 0;
            border-radius: 12px 12px 0 0;
        }

        h1 {
            margin-top: 10px;
            margin-bottom: 0;
            text-align: center;
        }
    </style>

</head>
<body>
<a href="<c:url value="/users"/>">Back to users list</a>
<br/>
<br/>
<h1>User Details</h1>

<table class="features-table">
    <tr class="param">
        <th>ID</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Age</th>
        <th>Admin</th>
        <th>Creation date</th>
    </tr>
    <tr class="value">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createDate}</td>
    </tr>
</table>
</body>
</html>