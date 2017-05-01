<%-- 
    Document   : professor-loginpg
    Created on : Apr 28, 2017, 4:52:34 PM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Professor Login</title>
    </head>
    <body>
         <form  name="regForm"  method="post" action="ploginaction">
                    <table >
                        <tr>
                            <td><b>Professor portal - Login</b></td> 
                            <td></td> 
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
                                 <a href='${pageContext.request.contextPath}/professorsignup'>Sign up</a>
                            </td>
                        </tr>
                        <tr>
                            <td>${message}</td> 
                             <td></td>
                        </tr>
                    </table>
                </form>
    </body>
</html>
