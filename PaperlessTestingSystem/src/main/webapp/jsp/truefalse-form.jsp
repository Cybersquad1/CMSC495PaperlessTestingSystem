<%-- 
    Document   : truefalse-form
    Created on : Apr 29, 2017, 11:55:01 AM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>True\False Form</title>
    </head>
    <body>
        <form  name="truefalseform"  method="post" action="truefalseaction">
            <table >
                <tr>
                    <td><b>Student Sing up</b></td>   
                </tr>
                <tr>
                    <td>Questions Statement</td>
                    <td><input type="text" name="firstname" ></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <input type="radio" name="trueoption"  >True<br>
                        <input type="radio" name="falseoption"  >False<br>                    
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit" name="submit" ></td> 
                </tr>
            </table>
        </form>
    </body>
</html>
