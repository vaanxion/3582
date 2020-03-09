<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/headerWine.jsp" />

<div class="sidebar">
	<button class="button1">訂單管理</button>
	<button class="button1">商品管理</button>	
	<button class="button1">會員管理</button>		
</div>
<div class="querytable">
	<form>
	<table width=60%>
		<tr>
			<td>會員帳號(E-mail):<input type="email" id="email"/></td>
			<td>姓名:<input type="text" id="name" /></td>
		</tr>
		<tr>
			<td>通訊地址:<input type="text" id="address" /></td>
			<td>聯絡電話:<input type="tel" id="phone" /></td>
		</tr>
		<tr>
			<td>會員狀態:
				<select id="status">
					<option value="active" selected>active</option>
					<option value="inactive">inactive</option>
				</select>
			</td>
			<td>生日:<input type="text" /></td>
		</tr>
		</table>
	<button>查詢</button><button type="reset">清除</button>
	</form>
</div>
<hr>

<div class="列出結果">
	
</div>


<jsp:include page="../common/footerWine.jsp" />