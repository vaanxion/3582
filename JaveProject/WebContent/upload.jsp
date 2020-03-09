<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>upload</title>
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
			<form action="upload.do" method="post" enctype="multipart/form-data">
			<table width=100% align=center border=1>
				<tr>
					<td colspan=2 align=center><h3>上傳</h3>
				<tr>
					<td>商品編號
					<td colspan=2><input type="text" name="id" id="id" value="">
				<tr>
					<td>英文名稱
					<td colspan=2><input type="text" name="enName" id="enName" value="">
				<tr>
					<td>中文名稱
					<td colspan=2><input type="text" name="chName" id="chName" value="">
				<tr>
					<td>酒種
					<td colspan=2><input type="text" name="type" id="type" value="">
				<tr>
					<td>濃度
					<td colspan=2><input type="text" name="percent" id="percent" value="">
				<tr>
					<td>容量
					<td colspan=2><input type="text" name="ml" id="ml"  value="">
				<tr>
					<td>價格
					<td colspan=2><input type="text" name="price" id="price" value="">
				<tr>
					<td>瓶
					<td colspan=2><input type="text" name="unit" id="unit" value="">
				<tr>
					<td>產地
					<td colspan=2><input type="text" name="place" id="place" value="">
				<tr>
					<td>品種
					<td colspan=2><input type="text" name="grape" id="grape" value="">
				<tr>
					<td>特色
					<td colspan=2><input type="text" name="feature" id="feature" value="">
				<tr>
					<td>狀態
					<td colspan=2><input type="text" name="status" id="status" value="">
				<tr>
					<td>圖片
					<td><input type="file" name="imgPath" id="imgPath" >
					<input type="hidden" name="createUser" value="admin">
					<input type="hidden" name="updateUser" value="admin">
				<tr>
					<td colspan=3 align=center><input type="submit" value="上傳" name="upload" onclick="return ok()"/>
					<input type="hidden" name="typeu" value="upload"/>
			</table>
		</form>

  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>
<script type="text/javascript">
function ok(){
	var id = $("#id").val();
	var enName = $("#enName").val();
	var chName = $("#chName").val();
	var type = $("#type").val();
	var percent = $("#percent").val();
	var ml = $("#ml").val();
	var price = $("#price").val();
	var unit = $("#unit").val();
	var place = $("#place").val();
	var grape = $("#grape").val();
	var feature = $("#feature").val();
	var status = $("#status").val();
	var imgPath = $("#imgPath").val();
	if(id === "" || enName === "" || chName === "" || type === "" || ml === "" || percent === "" || price === "" || unit === "" || 
			place === "" || grape === "" || feature === "" || status === "" ||  imgPath === ""){
		alert("欄位請勿空白");
		return false;
	}
	return true;
}
</script>
</body>
</html>
