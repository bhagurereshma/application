<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
 <%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 Login Success. Welcome <bean:write name="loginForm" property="username"></bean:write><br>
 
</body>
</html>

 <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
               
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>  <!-- small imageIcon of stock-->
                        <span>Employee </span>
                    </a>
                    <ul class="sub">
                        <li><a href="Registration.jsp">Add</a></li>
                        <li><a href="Display.jsp"> Display</a></li>
                       
                    </ul>
                </li>
         </ul>           
 </div>