<%@include file="header.jsp" %>

<%@include file="nav_header.jsp" %>
  
  <!-- Left side column. contains the logo and sidebar -->
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
	<%@include file="slidermenu.jsp" %>
     
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Employee Management
        <small>1</small>
      </h1>
     
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

	<%@include file="login.jsp" %>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%@include file="footer.jsp" %>
</div>


<%@include file="js_section.jsp" %>

</body>
</html>