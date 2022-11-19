<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="board.css">

</head>
<body><div class="py-5 text-center">
    <h1>Add New Post</h1>
</div>

<div class="col-md-7 col-lg-8 d-flex flex-wrap justify-content-center container-fluid">
<form action="addpost.jsp" method="post" enctype="multipart/form-data">
<table>


    <div class="col-sm-6 m-3">
<tr>
    <label for="category" class="form-label" style="font-weight: bold">Category</label>
    <input type="text" id="category" class="form-control" name="category"/>
</tr>
    </div>

    <div class="col-sm-6 m-3">
<tr><label for="title" class="form-label" style="font-weight: bold">Title</label>
    <input type="text" class="form-control" id="title" name="title"/></tr>
    </div>

    <div class="col-sm-6 m-3">
<tr><label for="writer" class="form-label" style="font-weight: bold">Writer</label>
    <input type="text" id="writer" class="form-control" name="writer"/></tr>
    </div>

    <div class="col-sm-6 m-3">
<tr><label for="content" class="form-label" style="font-weight: bold">Writer</label>
    <textarea cols="50" rows="5" class="form-control" id="content" name="content"></textarea></tr>
    </div>

    <div class="row g-3">
        <div class="col-sm-6">
            <tr>
                <label for="file" class="form-label" style="font-weight: bold">Photo</label>
                <input type="file" id="file" class="form-control" name="photo">
            </tr>
        </div>
    </div>

    <div style="text-align: end">
        <button class="btn btn-outline-success me-2" type="button" value="Cancel" onclick="location.href='http://localhost:8080/BoardJSPProject_war_exploded/posts.jsp'">View All Records</button>
        <button class="btn btn-outline-primary me-2" type="submit" value="Add Post">Add</button>


    </div>
</table>
</form>
</div>
</body>
</html>




