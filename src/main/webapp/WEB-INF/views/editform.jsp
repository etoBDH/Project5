<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@page import="com.example.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	BoardVO u = (BoardVO) request.getAttribute("u");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>

<h1>수정</h1>
<form action="../editok" method="post" accept-charset="UTF-8">

	<table>
		<tr><td>제목:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
		<tr><td>날짜 기간:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
		<tr><td>세부 일정:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
		<td>
			<tr><td>

		<%--<label for="lang">Language</label>
		<select name="category" id="lang">
			<option value=''<%=u.getCategory().equals("")|| u.getCategory() == null?"selected":""%>>--선택--</option>
			<option value="10만원" <%=u.getCategory().equals("javascript")?"selected":""%>>10</option>
			<option value="50만원" <%=u.getCategory().equals("php")?"selected":""%>>50</option>
			<option value="100만원" <%=u.getCategory().equals("java")?"selected":""%>>100</option>
			<option value="200만원" <%=u.getCategory().equals("golang")?"selected":""%>>200</option>
			<option value="500만원" <%=u.getCategory().equals("python")?"selected":""%>>500</option>
			<option value="700만원" <%=u.getCategory().equals("c#")?"selected":""%>>700</option>
			<option value="1000만원" <%=u.getCategory().equals("C++")?"selected":""%>>1000</option>
			<option value="2000만원" <%=u.getCategory().equals("erlang")?"selected":""%>>2000</option>
		</select>--%>

	</td></tr>
		</td>
		</tr>
		<tr><td colspan="2"><input type="submit" value="Edit Post"/>
			<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form>

</body>
</html>
</body>
</html>