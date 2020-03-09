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
ResultSet rs = new porderDAO().query(); 
String enName = request.getParameter("enName");
String chName = request.getParameter("chName");
String id = request.getParameter("id");
%>
<form action="upload.do?typeu=update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<%=id%>">
		<table width=100% align=center border=1>
		<tr>
		<%if(id == null || id.equals("")){ %>
			<th>商品編號</th>
			<th>英文名稱
			<th>中文名稱
			<th>酒種
			<th>濃度
			<th>容量
			<th>價格
			<th>瓶
			<th>產地
			<th>品種
			<th>特色
			<th>狀態
			<th>圖片
			<th>建立者
			<th>建立時間
			<th>更新者
			<th>更新時間
			<%} %>
			<%
			while (rs.next()) {
				if(enName != "" && enName != null){
					if(enName.equals(rs.getString("enName"))){
						out.println("<tr>" + "<td>" + rs.getString("id") + "<td>" + rs.getString("enName") + "<td>"	+ rs.getString("chName") 
						+ "<td>" + rs.getString("type") + "<td>" + rs.getDouble("percent") + "<td>" + rs.getInt("ml") + "<td>" + rs.getInt("price") 
						+ "<td>" + rs.getString("unit") + "<td>" + rs.getString("place") + "<td>" + rs.getString("grape")
						+ "<td>" + rs.getString("feature") + "<td>" + rs.getString("status")+ "<td>" + rs.getString("imgPath")
						+ "<td>" + rs.getString("createUser") + "<td>" + rs.getDate("createTime") + "<td>" + rs.getString("updateUser")
						+ "<td>" + rs.getDate("updateTime"));
					}
				}else if(chName != "" && chName != null){
					if(chName.equals(rs.getString("chName"))){
						out.println("<tr>" + "<td>" + rs.getString("id") + "<td>" + rs.getString("enName") + "<td>"	+ rs.getString("chName") 
						+ "<td>" + rs.getString("type") + "<td>" + rs.getDouble("percent") + "<td>" + rs.getInt("ml") + "<td>" + rs.getInt("price") 
						+ "<td>" + rs.getString("unit") + "<td>" + rs.getString("place") + "<td>" + rs.getString("grape")
						+ "<td>" + rs.getString("feature") + "<td>" + rs.getString("status")+ "<td>" + rs.getString("imgPath")
						+ "<td>" + rs.getString("createUser") + "<td>" + rs.getDate("createTime") + "<td>" + rs.getString("updateUser")
						+ "<td>" + rs.getDate("updateTime"));
					}
				}else if(id != null && id != ""){
					if(id.equals(rs.getString("id"))){
						%>
						
						英文名稱<input type="text" name="enName" value='<%=rs.getString("enName")%>'><br>
						中文名稱<input type='text' name="chName" value='<%=rs.getString("chName")%>'><br>
						種類<input type="text" name='type' value='<%=rs.getString("type")%>'><br>
						酒精濃度<input type='text' name='percent' value='<%=rs.getString("percent")%>'><br>
						毫升<input type='text' name='ml' value='<%=rs.getString("ml")%>'><br>
						價格<input type='text' name='price' value='<%=rs.getString("price")%>'><br>
						單位<input type='text' name='unit' value='<%=rs.getString("unit")%>'><br>
						產地<input type='text' name='place' value='<%=rs.getString("place")%>'><br>
						葡萄種類<input type='text' name='grape' value='<%=rs.getString("grape")%>'><br>
						敘述<input type='text' name='feature' value='<%=rs.getString("feature")%>'><br>
						產品狀態<input type='text' name='status' value='<%=rs.getString("status")%>'><br>
						圖檔位置<input type='file' name='imgPath'>
						<br><input type="submit" value='修改'/>
						<%
						
					}
				}else{
					out.println("<tr>" + "<td>" + rs.getString("id") + "<td>" + rs.getString("enName") + "<td>"	+ rs.getString("chName") 
					+ "<td>" + rs.getString("type") + "<td>" + rs.getDouble("percent") + "<td>" + rs.getInt("ml") + "<td>" + rs.getInt("price") 
					+ "<td>" + rs.getString("unit") + "<td>" + rs.getString("place") + "<td>" + rs.getString("grape")
					+ "<td>" + rs.getString("feature") + "<td>" + rs.getString("status")+ "<td>" + rs.getString("imgPath")
					+ "<td>" + rs.getString("createUser") + "<td>" + rs.getDate("createTime") + "<td>" + rs.getString("updateUser")
					+ "<td>" + rs.getDate("updateTime"));
				}
				
			}
			%>
	</table>
	</form>
	<script type="text/javascript">
	
	</script>
</body>
</html>
