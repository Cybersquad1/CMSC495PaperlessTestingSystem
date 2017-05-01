<%-- 
    Document   : student-loginpg2
    Created on : Apr 29, 2017, 9:17:02 PM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewpornt" content="width=device-width,intial-scale=1">
   <title>Login</title>
   <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">   
   
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		

        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Registration / Login" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/onlinetestingsystem.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
   
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
			.navbar-custom {
			    color: #FFFFFF;
			    background-color: #009933;
			}								
   </style>
</head>
<body>
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top navbar-custom">
	  <div class="container">
	   	 
	    <div class="navbar-collapse collapse" id="mainNavbar">
	        <ul class="nav navbar-nav navbar-right">
			     <li><a href='${pageContext.request.contextPath}'><span>Go back to Paperless Testing System Homepage</span></a></li>
           </ul>
	    </div> 
	    </div>  
	</nav>


 <section>				
       <div id="container_demo" >
             <a class="hiddenanchor" id="toregister"></a>
             <a class="hiddenanchor" id="tologin"></a>
                <div id="wrapper">
                   <div id="login" class="animate form">
                        
					  <form action="${pageContext.request.contextPath}/login" method="post" >	
					                   <h1>Log in</h1> 	
					                   			
						<!-- <p>	User name :<input type="text" name="usr" />
							password :<input type="password" name="pwd" />
							<input type="submit" />
					   </p> -->
					   
					    <p> 
                          <label for="username" class="uname"> Your email or Username </label>
                          <input id="username" name="userID"  type="text" placeholder="myusername or onlinetestingsystem@mail.com"/>
                        </p><!-- end username -->
                        
                        <p> 
                           <label for="password" class="youpasswd">Your password</label>
                           <input id="password" name="password"  type="password" placeholder="SamXEds@098" /> 
                        </p><!-- end password -->
                        

                                <p class="login button"> 
                                   <input type="submit" value="Login" /> 
								</p>

                                <p class="change_link">
									Not a member yet ?
									<a href='${pageContext.request.contextPath}/register' class="to_register">Register</a>
								</p>
					
					  </form>
			       </div>
			  </div>
	 </div>
</section>
	
	  
	
	 <div class="footer navbar-default navbar-inverse navbar-fixed-bottom navbar-custom">
	      <div class="container" style="text-align:center;">
	        <p>Paperless Testing System @ UMUC</p>
	      </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>













