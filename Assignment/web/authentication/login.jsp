<%-- 
    Document   : login
    Created on : Mar 15, 2023, 10:21:53 AM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Attendance Management System</title>
        <link href="CSS.css" rel="stylesheet" type="text/css"/>
        <link href="pure/pure-min.css" rel="stylesheet">

        <script type="text/javascript">
            function validateform()
            {
                var name = document.loginform.user_name.value;
                var password = document.loginform.user_pass.value;
                if (name === = null || "") {
                    alert("Username cannot be left Blank");
                    form.document.focus;
                    return false;
                } else if (password === null || "") {
                    alert("Please Enter Password");
                    return false;
                }
            }
        </script>     


    </head>
    <body>
        <div class="top"> 
            <h1>Student Attendance Management System</h1>    
        </div>
        <div id="login">
            <div id="error">

                <h2>Student Attendance Management System</h2>
                <hr>
            </div>
            <form name="login" id="login" action="login" method="POST">
                

                <p>
                    <label>User Email:
                        <input type="email" size="25" style="height:20px" id="user_name" class="input" name="email"/></label>
                </p>
                <p>
                    <label>Password :
                        <input type="password" name="password" id="user_pass" class="input" value="" size="25" style="height: 20px;" /></label>
                </p>
                <p>
                    <input type="reset" value="Reset" class="pure-button pure-button-primary"/> 
                    <input type="submit" value="Login" onclick="validateform();"class="pure-button pure-button-primary"/>

                </p>

            </form>
        </div>
        <hr>
    </body>
</html>
