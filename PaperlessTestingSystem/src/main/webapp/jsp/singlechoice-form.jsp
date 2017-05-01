<%-- 
    Document   : singlechoice-form
    Created on : Apr 29, 2017, 12:23:55 PM
    Author     : georgy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>single choice question</title>
    </head>
    <body>
            <form  name="singlechoiceform"  method="post" action="singleaction">
            <table >
                <tr>
                    <td><b>Single Choice Questions</b></td>   
                </tr>
                <tr>
                    <td>Question Statement</td>
                    <td><input type="text" name="questionstatement" ></td>
                </tr>
                <tr>
                    <td>Statement #3</td>
                    <td><input type="text" name="statementone" ></td>
                </tr>
                <tr>
                    <td>Statement #1</td>
                    <td><input type="text" name="statementtwo" ></td>
                </tr>
                <tr>
                    <td>Statement #2</td>
                    <td><input type="text" name="statementthree" ></td>
                </tr>
                <tr>
                    <td>Statement #3</td>
                    <td><input type="text" name="statementfour" ></td>
                </tr>
                <tr>
                            <td>Answer</td>
                            <td><select name="answer" >
                                    <option value="-1" selected>--select--</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </td>
                             <td  id="state-err"></td>
                        </tr>
                 
                    <td><input type="submit" value="submit" name="submit" ></td> 
                </tr>
                
                
            </table>
        </form>
    </body>
</html>
