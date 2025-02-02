<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EV charging Station</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Presento
  * Updated: Aug 30 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/presento-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
  button {
  background-color: #e03a3c;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 12px;
}
  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="index.html">EV Charging Station<span></span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="UserHome.jsp">Home</a></li>
         <!-- <!--  <li><a class="nav-link scrollto" href="CreateEvbook.jsp">EV Book</a></li>
          <li><a class="nav-link scrollto" href="Viewbookdetails.jsp">ManageBookDetails</a></li> --> 
          
          <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                                       
              <li><a href="Home.jsp">Logout</a></li> 
       
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      
    </div>
  </header><!-- End Header -->

  <main id="main">

 
   <section id="blog" class="blog"><br><br><br>
     <div class="container">
<h3>View EV Stations</h3>
<table class="table table-bordered" style="color:black">


<%
                try{
                	
                
                	/* Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from ev_bunk where bunkarea=?");  */ 
                   /*  ResultSet rs=st.executeQuery("select addcategoryauction.id,addcategoryauction.categoryname,addsubcategoryauction.subcategoryname,addsessiondateauction.date,addsessiontimeauction.time,addcategoryauction.status from addcategoryauction inner join addsubcategoryauction on addcategoryauction.cat=addsubcategoryauction.cat inner join addsessiondateauction on addcategoryauction.cat=addsessiondateauction.cat inner join addsessiontimeauction on addcategoryauction.cat=addsessiontimeauction.cat");
                     */
                    //while(rs.next())
                    	String area=request.getParameter("area");
                    	Connection con = DBConnection.getConnection();
	PreparedStatement ps = con.prepareStatement("select * from create_evstation where area=?");
                    	ps.setString(1, area);
	/* out.print("<table width=75% border=1>"); */
	
    
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();
	int totalColumn = rsmd.getColumnCount();
	out.print("<tr>");
	for(int i=1;i<=totalColumn;i++) {
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	}
                    while(rs.next()) {
                   	%>
                   <tr>
                   <td style="color:black"><%=rs.getString(1) %></td>
                   	<td style="color:black"><%=rs.getString(2) %></td>
                   	<td style="color:black"><%=rs.getString(3) %></td>
                   		<td style="color:black"><%=rs.getString(4) %></td>
                   			<td style="color:black"><%=rs.getString(5) %></td>
                   				<td style="color:black"><a href="<%=rs.getString(6) %>">View</a></td>
                   				<td style="color:black"><%=rs.getString(7) %></td>
                   				<td style="color:black"><%=rs.getString(8) %></td>
                   				<td style="color:black"><%=rs.getString(9) %></td>
                   				<td style="color:black"><button><a style="color:white" href="BookEVStation.jsp?id=<%=rs.getString(1)%>"><b>Book</b></a></button></td>
                   	
                   		<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>

</table>
<%-- <%
/* 
 response.setContentType("text/html");
PrintWriter out=response.getWriter(); */
 
String bunkarea=request.getParameter("bunkarea");

try {
	
	Connection con = DBConnection.getConnection();
	PreparedStatement ps = con.prepareStatement("select * from ev_bunk where bunkarea=?");
	ps.setString(1, bunkarea);
	/* out.print("<table width=75% border=1>"); */
	
    
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();
	int totalColumn = rsmd.getColumnCount();
	out.print("<tr>");
	for(int i=1;i<=totalColumn;i++) {
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	}
	out.print("<tr>");
	while(rs.next()) {
		out.print("<tr><td>"+rs.getInt(1)+
				"</td><td>"+rs.getString(2)+
				"</td><td>"+rs.getString(3)+
				"</td><td>"+rs.getString(4)+
				"</td><td>"+rs.getString(5)+
				"</td><td>"+rs.getString(6)+
				"</td><td>"+rs.getString(7));
	}
	 
	/* out.print("</table>"); */
}catch(Exception e) {
	out.print(e);
}



%> --%>
         </div></div></section></main>
             

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>