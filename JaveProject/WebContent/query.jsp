<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.ResultSet" import="DAO.porderDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>query</title>
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
<%
request.setCharacterEncoding("utf-8");
String enName = request.getParameter("enName");
String chName = request.getParameter("chName");
System.out.println("test"+enName);
%>
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
  <form action="query.jsp" method="post">
		英文名稱<input type="text" name="enName">&nbsp;中文名稱<input type="text" name="chName">&nbsp;<button>查詢</button>
  </form>
	<p><jsp:include page="query2.jsp?enName=<%=enName%>&&chName=<%=chName%>"/></p>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>

</body>
</html>
