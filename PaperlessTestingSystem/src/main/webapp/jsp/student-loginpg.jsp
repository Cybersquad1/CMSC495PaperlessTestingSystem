<%-- 
    Document   : student-loginpg
    Created on : Apr 27, 2017, 4:51:23 PM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
         <link rel="stylesheet" href="${pageContext.request.contextPath}/style">
    </head>
    <body>
         <form  name="regForm"  method="post" action="sloginaction">
                    <table >
                        <tr>
                            <td><b>Student portal - Login</b></td>   
                        </tr>
                         <tr>
                            <td>email</td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="text" name="password"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Login" name="submit" ></td> 
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                 <a href='${pageContext.request.contextPath}/studentsignup'>Sign up</a>
                            </td>
                        </tr>
                        <tr>
                            <td>${message}</td> 
                        </tr>
                    </table>
                </form>
    </body>
</html>
