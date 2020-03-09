<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.porder" import="DAO.porderDAO" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>update</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>Banner</h1>
  <p>註解</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="index.jsp">商品管理</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="upload.jsp">上傳</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="query.jsp">查詢</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="update.jsp">修改</a>
      </li>
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
  <div class="row">
			<!--<form action="upload.do" method="post" enctype="multipart/form-data">
			<table width=300 align=center border=0>
				<tr>
					<td>id <input type="text" name="id " size="5">
					<td>enName <input type="text" name="enName" size="5">
					<td>chName <input type="text" name="chName" size="5">
					<td>type <input type="text" name="type"	size="5">
					<td>percent<input type="text" name="percent" size="5">
					<td>ml<input type="text" name="ml" size="5">
					<td>price<input type="text" name="price" size="5">
					<td>unit<input type="text" name="unit" size="5">
					<td>place<input type="text" name="place" size="5">
					<td>grape<input type="text" name="grape" size="5">
					<td>feature<input type="text" name="feature" size="5">
					<td>status<input type="text" name="status" size="5">
					<td>imgPath<input type="file" name="imgPath" size="5">
					<input type="hidden" name="imgPath" size="5">
					<input type="hidden" name="createUser" size="5">
					<input type="hidden" name="updateUser" size="5">					
					<td colspan=2 align=center><input type="submit" value="修改">
					<input type="hidden" name="typeu" value="update"/>
			</table>
			</form>
			-->
			<%String id = request.getParameter("id"); %>
			<%
			ResultSet rs = new porderDAO().query();
			%>
				<select id="pid">
				<%while(rs.next()){ %>
					<option><%=rs.getString("id") %></option>
					<%} %>
				</select>
			<button onclick="ok()">查詢</button><br>
			<!--<jsp:include page="query2.jsp?id=" />-->
  </div>
  <div id="show"></div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>
<script type="text/javascript">
function ok(){
	var id = $("#pid").val();
	$.post("query2.jsp",{"id":id},function(data){
		$("#show").html(data);
	});
}
</script>
</body>
</html>
