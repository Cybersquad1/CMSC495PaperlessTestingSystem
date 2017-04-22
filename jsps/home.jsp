<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewpornt" content="width=device-width,intial-scale=1">
   <title>Paperless Testing System</title>
   <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="CustomeStyle.css" rel="stylesheet">
   
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
			  body > .container
			   {
			    padding-top: 40px;
			     }
	  .navbar-fixed-top {
	    margin-bottom: 0;
	    }
	    } 
	    /* Set the fixed height of the footer here */
	    #footer {
		  height: 60px;
		  background-color:black;
		  }	/* <!-- end footer -->	 */
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
	
	<div class="container" align="center">
		<div class="row">
		    <div class="col-sm-12"><h1>Paperless Testing System</h1></div>
		</div>
	  
	  
		 <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
                  <a href="takeExam?test=maths" ${pageContext.request.contextPath}>MATHS</a>
           </div>
		   <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		      <a  href="takeExam?test=physics" ${pageContext.request.contextPath}>PHYSICS</a>
		   </div>
		   <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		     <a href="takeExam?test=chemistry" ${pageContext.request.contextPath}>CHEMISTRY</a>
		   </div>
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		     <a  href="takeExam?test=biology" ${pageContext.request.contextPath}>BIOLOGY</a>
		    </div>
         </div>
         
         <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		      <a href="takeExam?test=history" ${pageContext.request.contextPath}>HISTORY</a>
		    </div>
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		     <a href="takeExam?test=government" ${pageContext.request.contextPath}>GOVERNMENT</a>
		    </div>
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		      <a href="takeExam?test=art" ${pageContext.request.contextPath}>ART</a>
		     </div>
		    <div class="col-xs-12 col-sm-12 col-md-3 btn btn-primary" style="height:100px; margin-top:5px;background-color:#fff2cc; margin-bottom:5px;">
		     <a href="takeExam?test=geography" ${pageContext.request.contextPath}>GEOGRAPHY</a>
		    </div>
         </div>
	  
	</div>
	
	 <div class="footer navbar-default navbar-inverse navbar-fixed-bottom navbar-custom">
	      <div class="container" style="text-align:center;">
	        <p>Paperless Testing System @ UMUC</p>
	      </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>


