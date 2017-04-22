<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
               <div id="register" class="animate form">
            
                 <form name="login-form" class="login-form" action="checkRegister" method="post">

					   <h1> Sign up </h1> 

                       <p> 
                          <label for="firstnamesignup" class="firstname" data-icon="u">Your First Name</label>
                          <input id="firstnamesignup" name="fname" required="required" type="text" placeholder="Abraham" />
                       </p> <!-- end first name  -->

                       <p> 
                         <label for="lastnamenamesignup" class="lastname" data-icon="u">Your Last Name</label>
                         <input id="lastnamesignup" name="lname" required="required" type="text" placeholder="Ewnetu" />
                       </p><!--end last name  -->
                       
                        <p> 
                         <label for="emailsignup" class="youmail" data-icon="e"> Your email</label>
                         <input  id="useremail"  name="email" required="required" type="text" placeholder="onlinetestingsystem@mail.com"/> 
                        </p> <!--end user email address  -->
                                
                        <p> 
                            <label for="usernamesignup" class="uname" data-icon="u">Your Username</label>
                            <input id="usernamesignup" name="userid" required="required" type="text" placeholder="onlinesystem098" />
                        </p> <!-- end username -->

                        <p> 
                           <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                           <input id="passwordsignup" name="pwd" required="required" type="password" placeholder="eg. X8df!90EO"/>
                        </p> <!-- end password  -->
                          
                        <p> 
                            <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                            <input id="passwordsignup_confirm" name="pwd" required="required" type="password" placeholder="eg. X8df!90EO"/>
                        </p><!--end password confirmition  -->
                          
                        <p class="signin button"> 
                             <!--should redierect to choosecources.html page after sign up-->
                              <input type="submit" value="Sign up"/> 
                        </p><!-- end submit -->
                          
                        <p class="change_link">  
                                    Already a member ?
                                    <a href='${pageContext.request.contextPath}/login' class="to_register"> Go and log in </a>
                       </p><!-- end change link -->

				 </form>
				</div>
			</div>
		</div>
	</section>

<div class="gradient"></div>


</body>
</html>
