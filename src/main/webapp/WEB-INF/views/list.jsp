<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@page import="com.example.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteOK/' + id;
        }
    </script>
</head>
<body>
<p>Plan Travel</p>
<h3>장소 리스트</h3>
<table id="list" width="30%">
    <tr>
        <th>No.</th>
        <th>제목</th>
        <th>날짜 기간</th>
        <th>세부 일정</th>
        <th>금액</th>
        <th>편집</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td><a href="view/${u.getSeq()}">${u.getTitle()}</a></td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getCategory()}</td>
            <td><a href="editform/${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/><a href="add">추가하기</a>
</body>
</html>