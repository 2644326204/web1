<%-- 
    Document   : StudentRegister
    Created on : 2019-4-7, 15:35:07
    Author     : kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>安徽大学</title>
         <link rel="stylesheet" type="text/css" href="css/regist.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <style>
        span{
            color:blue;
        }
       
    </style>
    </head>
    <body>
        <p> ${message} </p>
        
         <div class="wrapper">
        <center>
            <h1><span>核聚变工程组成员注册</span></h1>
        
            <div class="main" style="padding:0;">
                <form method="post" action="<%=request.getContextPath()%>/StudentRegisterServlet">
                     <div class="num">
                        <em>学工号</em> <input type="text" name="sno" placeholder="学工号">
                    </div>
                    
                    <div class="nam">
                        <em>姓名</em><input type="text" name="nam" placeholder="姓名">
                    </div>
                    <div>
                        <em>身份</em>
                        <label>教<input type="radio" name="job" checked="checked" value="教师" />学<input type="radio" name="job" value="学生"/></label>
                    </div>
                    <div class="age">
                        <em>所在组</em>
                        <select name="obj" id="obj1">

                    <option  value="计算机模拟组">计算机模拟组</option>
                    <option  value="材料组">材料组</option>
                    <option  value="光学组">光学组</option>
                </select>
                        
                    </div>
                    
                   
                    <div>
                        <em>性别</em>
                        <label>男<input type="radio" name="sex" checked="checked" value="男" />女<input type="radio" name="sex" value="女"/></label>
                    </div>
                    
                    
                    
                    
                    <div class="pwd">
                       <em>密码</em> <input type="password" name="pwd" placeholder="输入原始密码">
                    </div>
                    
                    
                    <div class="pwd1">
                        <em>密码</em><input type="password" name="pwd1" placeholder="确认原始密码">
                    </div>
                    
                    <input type="submit" value="注册" style="color:blue">
                </form>
            </div>
        </center>
             
       
                
    </div>
    </body>
</html>
