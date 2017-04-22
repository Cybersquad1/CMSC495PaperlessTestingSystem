<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Paperless Testing System</title>
   <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
   
   <style type="text/css">
      body {
	        background: url("${pageContext.request.contextPath}/images/onlinetestingsytembg.jpg");
	       }
	       
	       
	       body > .container {
					  padding-top: 40px;
					}

			/*
			 * Responsive stypes
			 */
			@media (max-width: 980px) {
			
			  body > .container {
					    padding-top: 40px;
					  }
			  .navbar-fixed-top {
					    margin-bottom: 0;
					  }
			
			} /* END: @media (max-width: 980px) */	
			
			/* Set the fixed height of the footer here */
			#footer {
			  height: 60px;
			  background-color:black;
			}	/* <!-- end footer -->	 */
			/* navbar */
			/* .navbar-default {
			    background-color: #009933;
			}	 */
			
			.navbar-custom {
			    color: #FFFFFF;
			    background-color: #009933;
			}	
								
   </style>
</head>
<body>
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top navbar-custom">
	  <div class="container">
	    <div class="navbar-header">
	         <button type="button" class="navbar-toggle" data-target="#mainNavbar" data-toggle="collapse">
		         <span class="icon-bar"></span>
		         <span class="icon-bar"></span>
		         <span class="icon-bar"></span>
		     </button>
	    </div>	 
	    <div class="navbar-collapse collapse" id="mainNavbar">
	        <ul class="nav navbar-nav ">
	           <li class="active"><a href='${pageContext.request.contextPath}'><span>Paperless Testing System</span></a></li>
	           <li><a href="#">About</a></li>
	           <li><a href="#">Contact</a></li>
	        </ul>
	        
	        <ul class="nav navbar-nav navbar-right">
			     <li><a href='${pageContext.request.contextPath}/login'><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
			     <li><a href='${pageContext.request.contextPath}/register'><span class="glyphicon glyphicon-user"></span>Register</a></li>
           </ul>
	    </div> 
	    </div>  
	</nav>

<div style="position:absolute;left:350px;top:200px">
<h3>Congratulation ${requestScope.newUser} your account created successfully , <a href="${pageContext.request.contextPath}/login">login </a>to take the exam.</h3>
</div>


</body>
</html>
