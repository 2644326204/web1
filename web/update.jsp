<%-- 
    Document   : update
    Created on : 2022-5-17, 15:39:07
    Author     : Administrator
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            
        
            <div class="main" style="padding:0;">
                <form method="post" action="<%=request.getContextPath()%>/updateServlet2">
                     <div class="num">
                        <p>学工号 <input type="text" name="sno" value="${stu.sno}" placeholder="学工号"></p>
                    </div>
                    
                    <div class="nam">
                        <p>姓名<input type="text" name="nam" value="${stu.sname}" placeholder="姓名"></p>
                    </div>
                    
                    <c:if test="${stu.job=='教师'}">
                       <em>身份</em>
                        <label>教<input type="radio" name="job" checked="checked" value="教师" />学<input type="radio" name="job" value="学生"/></label>
                    
                   </c:if>
                    <c:if test="${stu.job=='学生'}">
                       <p>身份</p>
                        <label>教<input type="radio" name="job" value="教师" />学<input type="radio" name="job" checked="checked" value="学生"/></label>
                    
                   </c:if>
                    
                    
                    <c:if test="${stu.group=='计算机模拟组'}">
                        <p>计算机模拟组<input type="radio" name="group" checked="checked" value="计算机模拟组"/></p>
                            <p>材料组<input type="radio" name="group" value="材料组"/></p><p>光学组<input type="radio" name="group" value="光学组"/></p>
                    
                   </c:if>
                    <c:if test="${stu.group=='材料组'}">
                        <p>计算机模拟组<input type="radio" name="group"  value="计算机模拟组"/>
                            材料组<input type="radio" name="group" checked="checked" value="材料组"/>光学组<input type="radio" name="group" value="光学组"/></p>
                    
                   </c:if>
                   <c:if test="${stu.group=='光学组'}">
                        <p>计算机模拟组<input type="radio" name="group"  value="计算机模拟组"/>
                            材料组<input type="radio" name="group" value="材料组"/>光学组<input type="radio" name="group" checked="checked" value="光学组"/></p>
                    
                   </c:if>
                    
                    <c:if test="${stu.sex=='男'}">
                        <p>男<input type="radio" name="sex" checked="checked" value="男"/>女<input type="radio" name="sex" value="女"/></p>
                    
                   </c:if>
                    <c:if test="${stu.sex=='女'}">
                        <p>男<input type="radio" name="sex" value="男"/>女<input type="radio" name="sex" checked="checked" value="女"/></p>
                    
                   </c:if>
                    
                    
                    <div class="pwd">
                       <p>密码 <input type="text" name="pwd" placeholder="密码" value="${stu.password}"></p>
                    </div>
                    
                    
                  
                    
                    <input type="submit" value="注册" style="color:blue">
                </form>
            </div>
        </center>
             
       
                
    </div>
    </body>
</html>
