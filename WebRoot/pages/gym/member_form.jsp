<%@page import="com.kzw.gym.entity.Lockers"%>
<%@page import="java.util.List"%>
<%@page import="com.kzw.core.util.spring.SpringContextHolder"%>
<%@page import="com.kzw.gym.service.LockersService"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.kzw.com/mytag" prefix="k"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html lang="en-us">	
	<head>
		<meta charset="utf-8">
		<base href="<%=basePath%>pages/gym/">
		<link rel="stylesheet" type="text/css" media="screen" href="../../css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="../../css/your_style.css">
	</head>

	<!--
	The ID "widget-grid" will start to initialize all widgets below 
	You do not need to use widgets if you dont want to. Simply remove 
	the <section></section> and you can use wells or panels instead 
	-->
<body>

<div class="container">
	<!-- row -->
	<div class="row">
		
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div>
				<div class="widget-body">
					<form class="form-horizontal">
						<input type="hidden" name="id" value="${member.id}">
						<input type="hidden" name="card.id" value="${member.card.id}">
	                     <table class="bs-table">
	                     <tr>
	                     		<td width="70">éĉİç§ç</td>
	                     		<td colspan="2"> 
	                     			<input class="form-control" type="hidden" id="imgUrl" style="width:78%;display:inline;float:left;" name ="imgUrl" type="text" value="${member.imgUrl}" readonly="readonly"/>
	                     			<img id="imgS" width="100" src="<%=path%>${member.imgUrl}" style="width:120px;"/>
	                     			<a href="javascript:selectFileAttach()" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> éĉİ</a>
	                     		</td>
	                     	</tr>
	                     	<tr>
	                     		<td width="70">ċ§ċ</td>
	                     		<td><input class="form-control" name="name" type="text" value="${member.name}"/></td>
	                     		<td width="70">ĉ§ċĞ</td>
	                     		<td>
	                     			<k:dictSelect name="sex.id" itemName="ĉ§ċĞ" className="form-control" value="${member.sex.id}"/>
	                     		</td> 
	                     	</tr>
	                      	<tr>
	                     		<td width="70">ċı´é?</td>
	                     		<td><input class="form-control" name="age" type="text" value="${member.age}"/></td>
	                     		<td width="70">èç³ğĉıċĵ</td>
	                     		<td><input class="form-control" name="phone" type="text" value="${member.phone}"/></td>
	                     	</tr>
	                     	<tr>
	                     		<td width="70">èşĞéĞ</td>
	                     		<td><input class="form-control" name="height" type="text" value="${member.height}"/></td>
	                     		<td width="70">ä½é</td>
	                     		<td><input class="form-control" name="weight" type="text" value="${member.weight}"/></td>
	                     	</tr>
	                 
	                     	 <tr>
	                     	 	<td width="90">äĵċċĦċĦċ·</td>
	                     		<td><input class="form-control" name="card.cardNo" type="text" value="${member.card.cardNo}" /></td>
	                     		<td width="90">äĵċċĦç­çş§</td>
	                     		<td>
	                     			<k:dictSelect name="card.level.id" itemName="äĵċċĦ" className="form-control" value="${member.card.level.id}"/>
	                     		</td>
	                     	</tr>
	                     	
	                     		 <tr>
	                     		<td width="70">ċĵċĦĉ?ĉ</td>
	                     		<td>
	                     			<input class="form-control" onfocus="WdatePicker()" id="card.beginTime" name="card.beginTime" type="text" value="<fmt:formatDate value="${member.card.beginTime}" pattern="yyyy-MM-dd"/>"/></td>
	                     		<td width="70">çğĉĉ?ĉ</td>
	                     		<td>
	              					<input class="form-control" onfocus="WdatePicker()" id="card.endTime" name="card.endTime" type="text" value="<fmt:formatDate value="${member.card.endTime}" pattern="yyyy-MM-dd"/>"/></td>
	                     		</td>
	                     	</tr>
	                     	 <tr>
	                     		<td width="90">ċĵċĦéé˘</td>
	                     		<td><input class="form-control" name="card.amount" type="text" value="${member.card.amount}"/></td>
	                
	                     	</tr>
	                   
	                    <!--  
	                    <c:if test="${not empty member}">
	                     	<input type="hidden" name="card.cardNo" value="${member.card.cardNo}">
	                     	<input type="hidden" name="card.level.id" value="${member.card.level.id}">
	                    	<input type="hidden" name="card.amount" value="${member.card.amount}">
	                    	<input id="card.endTime" name="card.endTime" type="hidden" value="<fmt:formatDate value="${member.card.endTime}" pattern="yyyy-MM-dd"/>"/></td>
	                    	<input id="card.beginTime" name="card.beginTime" type="hidden" value="<fmt:formatDate value="${member.card.beginTime}" pattern="yyyy-MM-dd"/>"/></td>
	                    </c:if>-->
	                  
	                   
	                     </table>
						
					</form>
	
				</div>
			</div>
	
		</article>
		<!-- WIDGET END -->
		
	</div>
	<!-- end row -->
</div>
		<!-- ĉĥé´éĉİċ¨ -->
		<script src="../../js/plugin/My97DatePicker/WdatePicker.js"></script>
		<!-- éäğĥéĉİċ¨ -->
	<script src="../../js/libs/jquery-2.1.1.min.js"></script>
	<script type="text/javascript">
		
		// éĉİéäğĥ
		function selectFileAttach() {
			top.layer.open({
				type: 2,
				title: 'ĉäğĥéĉİċ¨',
				content: '<%=path%>/pages/selector/fileAttach_selector_pic.jsp',
				area: ['800px', '600px'],
				maxmin: true,
				btn: ['çĦ?ċ?', 'ċĉĥ'],
				yes: function(index, layero) {
					// è·ċ?ċĵ
					var arr = layero.find('iframe')[0].contentWindow.getUrl();
					if(arr.length == 0) {
						top.layer.msg('èŻ·éĉİä¸ċĵ ċ?ç');
						return;
					}
					$('#imgUrl').val(arr[0]);
					$('#imgS').attr('src', arr[0]);
					top.layer.close(index);
				}
			});	
		}
	
	</script>
	</body>

</html>
