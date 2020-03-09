<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/headerWine.jsp" />
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>demo3</title>
  </head>
  <body>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 	<!-- 以上不要動 -->
 	<div class="sidebar">
	<a button class="button1" href="../../index.jsp">訂單管理</button></a>
	<a button class="button1" href="../../index.jsp">商品管理</button></a>
	<a button class="button1" href="../../index.jsp">會員管理</button></a>	
</div>
<div class="querytable">
	<form>
	<table width=60%>
		<tr>
			<td style="padding-left:2%">商品編號<input type="text" id="id"/></td>
			<td style="padding-left:2%">商品名:
				<select id="status">
					<option value="" selected></option>
					<option value="BENCHMARK CABERNET SAUVIGNON 格萊堡 標竿卡本內紅葡萄酒">BENCHMARK CABERNET SAUVIGNON 格萊堡 標竿卡本內紅葡萄酒</option>
					<option value="Chateau Tanunda Shiraz Cabernet Franc 塔南達酒莊 希哈卡本內紅酒">Chateau Tanunda Shiraz Cabernet Franc 塔南達酒莊 希哈卡本內紅酒</option>
					<option value="Penfolds Bin 8 Cabernet Shiraz 奔富 BIN 8 卡本內希哈紅酒">Penfolds Bin 8 Cabernet Shiraz 奔富 BIN 8 卡本內希哈紅酒</option>
		<tr>
			<td style="padding-left:2%">酒種:
				<select id="status">
					<option value="" selected></option>
					<option value="紅酒">紅酒</option>
					<option value="白酒">白酒</option>
				</select>
			<td style="padding-left:2%">價格<input type="text" id="price"/></td>
			<td style="padding-left:2%">產地:
				<select id="status">
					<option value="" selected></option>
					<option value="Australia">Australia</option>
					<option value="Chlie">Chlie</option>
					<option value="France">France</option>
					<option value="USA">USA</option>
				</select>
		<tr>
			<td style="padding-left:2%">濃度<input type="text" id="id"/></td>
			<td style="padding-left:2%">容量<input type="text" id="id"/></td>
			<td style="padding-left:2%">品種<input type="text" id="id"/></td>
		</table>
	<button>查詢</button><button type="reset">清除</button>
	</form>
</div>
<hr>

<div class="列出結果">
	
</div>


<jsp:include page="../common/footerWine.jsp" />
<script type="text/javascript">
function orders(){
	window.location.href="../../index.jsp";
}
function proders(){
	window.location.href="../../index.jsp";
}
function members(){
	window.location.href="../../index.jsp";
};
</script>
 	<!-- 以下不要動 -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!--<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>