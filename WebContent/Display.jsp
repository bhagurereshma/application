<%@include file="header.jsp"%>

<%@include file="nav_header1.jsp"%>

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar"> <!-- Sidebar user panel (optional) -->
	<div class="user-panel">
		<h2 style="color: white">Welcome</h2>
		<div class="pull-left info"></div>
	</div>

	<!-- search form (Optional) -->
	<form action="#" method="get" class="sidebar-form">
		<div class="input-group">
			<input type="text" name="q" class="form-control"
				placeholder="Search..."> <span class="input-group-btn">
				<button type="submit" name="search" id="search-btn"
					class="btn btn-flat">
					<i class="fa fa-search"></i>
				</button>
			</span>
		</div>
	</form>
	<!-- /.search form --> <%@include file="slider_submenu.jsp"%>

	</section> <!-- /.sidebar --> </aside>

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h2>Employee Information</h2>

		</section>

		<!-- Main content -->
		<section class="content container-fluid"> 
		<input type=button value="Back" onCLick="history.back()" class="btn btn-primary btn-info" style="margin-left: 1000px"> 
			<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/employee" user="root" password="" />

		<sql:query var="listEmp" dataSource="${myDS }">select * from registration;</sql:query>



		<div align="center">
			<table border="1" class="table table-hover">

				<tr>
					<th>Employee Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Address</th>
					<th>Username</th>
					<th></th>
				</tr>
				<c:forEach var="user" items="${listEmp.rows}">
					<tr>
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.firstname}" /></td>
						<td><c:out value="${user.lastname}" /></td>
						<td><c:out value="${user.email}" /></td>
						<td><c:out value="${user.mobile}" /></td>
						<td><c:out value="${user.address}" /></td>
						<td><c:out value="${user.username}" /></td>
						<td><html:link page="/delete?method=delete&id=${user.id}">Delete/</html:link>
							<html:link page="/update?method=update&id=${user.id}">update</html:link>
						</td>

					</tr>
				</c:forEach>
			</table>

		</div>

		</section>
		<!-- /.content -->
	</div>



	<%@include file="footer.jsp"%>
	</div>


	<%@include file="js_section.jsp"%>

</body>
</html>