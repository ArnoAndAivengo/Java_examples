<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users page</title>
    <style type="text/css">
        h1 {
            margin-top: 10px;
            margin-bottom: 0;
        }

        .features-table
        {
            width: 100%;
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

        ul.paging {
            display: inline-block;
            margin:0 auto;
            padding: 0;
        }

        ul.paging li {
            display: inline;
            border: 1px solid #ddd;
            border-radius: 10%;
            color: black;
            background: #fafafa;
            float: left;
            font-size: 18px;
            padding: 8px 16px;
            text-decoration: none;
        }

        .but {
            background-color: #fafafa;
            border: 1px solid #ddd;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
            transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
            border-radius: 4px;
            color: #555555;
            display:block;
            width:120px;
            font-size: 14px;
            text-align:center;
            vertical-align: middle;
            height: 30px;
            line-height: 20px;
            text-decoration:none;
        }
    </style>
</head>
<body>

    <h1>Users List</h1>

    <c:if test="${!empty listUsers}">
        <table class="features-table">
            <tr class="param">
                <th>ID</th>
                <th>Name</th>
                <th>E-mail</th>
                <th>Age</th>
                <th>Admin</th>
                <th>Creation date</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${listUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                    <td>${user.email}</td>
                    <td>${user.age}</td>
                    <td>${user.admin}</td>
                    <td>${user.createDate}</td>
                    <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <div style="align-content: center">
    <ul class="paging">
        <c:if test="${page > 1}">
            <li><a href="<c:url value="/users"/>">Back</a></li>
            <li><a href="<c:url value="/users"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
        </c:if>
        <li><spring:message text="${page}"/></li>
        <c:if test="${!empty listUsers}">
            <li><a href="<c:url value="/users"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
        </c:if>
    </ul>
    </div>

    <br/>
    <br/>
    <c:url var="searchuser" value="/searchresults"/>
    <form:form action="${searchuser}" commandName="searcheduser">
        <table width="30%">
            <tr>
                <td><input class="but" type="submit" name="action" value="<spring:message text="Search"/>"/></td>
                <td><form:input path="name"/> <spring:message text="Name"/></td>


            </tr>
        </table>
    </form:form>

    <form>
        <a class="but" href="/adduser">Add User</a>
    </form>

    <br/>
    <br/>


</body>
</html>
