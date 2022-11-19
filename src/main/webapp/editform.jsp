<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="stylesheet" href="board.css">

</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id = request.getParameter("id");
	BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
	request.setAttribute("vo",u);
%>

<div class="py-5 text-center">
<h1>Edit Form</h1>
</div>


<div class="col-md-7 col-lg-8 d-flex flex-wrap justify-content-center container-fluid">
<form action="editpost.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="seq" value="${vo.getSeq()}"/>
<table>
	<div class="row g-3">
		<div class="col-sm-6">
			<tr>
				<label for="category" class="form-label" style="font-weight: bold">Category</label>
				<input type="text" class="form-control" id="category" name="category" value="${vo.getCategory()}"/>
			</tr>
		</div>
	</div>

	<div class="col-sm-6 m-3">
		<tr>
			<label for="title" class="form-label" style="font-weight: bold">Title</label>
			<input type="text" class="form-control" id="title" name="title" value="${vo.getTitle()}"/>
		</tr>
	</div>

	<div class="col-sm-6 m-3">
		<tr>
			<label for="writer" class="form-label" style="font-weight: bold">Writer</label>
			<input type="text" class="form-control" id="writer" name="writer" value="${vo.getWriter()}" />
			</tr>
	</div>

	<div class="col-sm-6 m-3">
		<tr>
			<label for="content" class="form-label" style="font-weight: bold">Content</label>
			<textarea cols="50" rows="5" class="form-control" id="content" name="content">${vo.getContent()}</textarea>
		</tr>
	</div>

	<div class="col-sm-6 m-3">
		<tr>
			<label for="photo" class="form-label" style="font-weight: bold">Photo</label>
			<input type="file" class="form-control" id="photo" name="photo" value="${vo.getPhoto()}" />
			<c:if test="${vo.getPhoto() ne ''}"><br />
				<div style="text-align: center">
				<img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}"  width="200px" height="200px" class="photo">
				</div>
			</c:if>
		</tr>
	</div>

<div style="text-align: end">
	<button class="btn btn-outline-danger me-2" type="button" value="Cancel" onclick="history.back()">Cancel</button>
	<button class="btn btn-outline-primary me-2" type="submit" value="Edit Post">Edit</button>
</div>
</table>
</form>
</div>
</body>
</html>