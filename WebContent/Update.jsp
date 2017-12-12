<%@include file="header.jsp" %>

<%@include file="nav_header1.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
    

  
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <h2 style="color: white">Welcome</h2>
        <div class="pull-left info">
          
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->
	<%@include file="slider_submenu.jsp" %>
     
    </section>
    <!-- /.sidebar -->
  </aside>
  
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h3>
       Employee Modification 
      </h3>
     
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
    
     <input type=button value="Back" onCLick="history.back()" class="btn btn-primary btn-info" style="margin-left:1000px">
    

<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/employee" user="root" password=""/>
		
		<sql:query var="listEmp" dataSource="${myDS }">select * from registration where id="<%=request.getSession().getAttribute("Empid") %>" ;</sql:query>
		

<div class="container" style="margin-top:30px">
	<div class="col-md-10 col-md-offset-1">
    <div class="panel panel-default">
  <div class="panel-heading"><h3 class="panel-title"></h3></div>
  
  <div class="panel-body">
	   <html:form action="/update1">
	   
	    <c:forEach var="user" items="${listEmp.rows}">
                
	            <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="firstname"> First Name</label>
							<div class="col-md-5">
	                        	<html:text property="firstname" name="registrationForm" value="${user.firstname}" styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				
				<br>
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name"> Last Name</label>
							<div class="col-md-5">
	                        	<html:text property="lastname" name="registrationForm" value="${user.lastname}"  styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				
				<br>
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name"> Email</label>
							<div class="col-md-5">
	                        	<html:text property="email" name="registrationForm" value="${user.email}"  styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				<br>
				
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name"> Mobile</label>
							<div class="col-md-5">
	                        	<html:text property="mobile" name="registrationForm" value="${user.mobile}" styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				<br>
				
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name"> Address</label>
							<div class="col-md-5">
	                        	<html:text property="address" name="registrationForm" value="${user.address}" styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				<br>
				
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name"> User Name</label>
							<div class="col-md-5">
	                        	<html:text property="username" name="registrationForm"  value="${user.username}" styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				<br>
				
				 <div class="row">
						<div class="form-group">
							<label class="col-md-4 control-label" > Password</label>
							<div class="col-md-5">
	                        	<html:text property="password" name="registrationForm"  value="${user.password}" styleClass="form-control"></html:text>
	                        </div>
						</div>
				</div>
				<br>
            <html:submit property="method" value="updateDisplay" styleClass="btn btn-success" style="margin-left:400px">Submit</html:submit>
       <hr style="margin-top:10px;margin-bottom:10px;" >
  </c:forEach>	  
	</html:form>
	  </div>
	</div>
	</div>
</div>


<html:errors/>

</section>
    <!-- /.content -->
  </div>
  
  

<%@include file="footer.jsp" %>
</div>


<%@include file="js_section.jsp" %>
</body>
</html>