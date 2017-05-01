<%-- 
    Document   : professor-signup
    Created on : Apr 28, 2017, 5:18:18 PM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
    </head>
    <body>
       <form  name="regForm"  method="post" action="psignupaction">
            <table >
                <tr>
                    <td><b>Professor Sing up</b></td>   
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" ></td>
                </tr>
                <tr>
                    <td>Last  Name</td>
                    <td><input type="text" name="lastname"></td>
                </tr>
                <tr>
                    <td>email</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit" name="submit" ></td> 
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href='${pageContext.request.contextPath}/professorlogin'>login</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
