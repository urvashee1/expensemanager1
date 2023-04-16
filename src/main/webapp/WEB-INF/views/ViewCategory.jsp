<%@page import="com.growinted.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<h2> View Category</h2>
<%
CategoryBean categoryBean=(CategoryBean)request.getAttribute("categoryBean");
%>
CatgoryId:<%=categoryBean.getCategoryId()%><br>
CategoryName:<%=categoryBean.getCategoryName()%><br>
Deleted:<%=categoryBean.getDeleted()%>
</body>
</html>