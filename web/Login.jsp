<%-- 
    Document   : Login
    Created on : 2019-4-6, 17:02:13
    Author     : kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>毕业设计登录界面</title>
        <style>
            body{
/*                background:linear-gradient(to bottom left,#abbec1 20%,#64d04f 60%);*/
                  background-image:url(images/1.jpg);
                      
            }
             .y1{
                width:450px;
                background-color:rgba(100,50,150,0.8);
                height:600px;
            }
            .y0{
                height:200px;   
                font-size: 30px;
                color:red;
                line-height: 200px;
            }
            @keyframes fly { 
                0%{
                    transform: translateY(0);
                }

                100%{
                    transform:translateY(-1200px);                   
                }
            }
            @keyframes fly1 { 
                0%{
                    transform: translateX(0);
                }

                100%{
                    transform:translateX(-1800px);                   
                }
            }
            .f1 li {
                animation: fly 3s infinite; /*添加动作 动作名称 持续时间   无限循环*/
                border-radius: 100px;
                width: 200px;
                height: 200px;
                left: 70%;
                position: absolute;
                bottom: -200px;
                background-color: rgba(255, 255, 0, 0.4);
            }

            .f2 li {
                animation: fly 3s infinite; /*添加动作 动作名称 持续时间   无限循环*/
                border-radius: 100px;
                width: 200px;
                height: 200px;
                left: 20%;
                position: absolute;
                bottom: -200px;
                background-color: rgba(255, 255, 0, 0.4);
            }
            .f3 li{
                animation: fly1 12s infinite; /*添加动作 动作名称 持续时间   无限循环*/
                border-radius: 100px;
                width: 200px;
                height: 200px;
                bottom: 20%;
                position: absolute;
                right: -200px;
                background-color: rgba(0, 50, 255, 0.4);
            }      
            .f4 li{
                animation: fly1 12s infinite; /*添加动作 动作名称 持续时间   无限循环*/
                border-radius: 100px;
                width: 200px;
                height: 200px;
                bottom: 60%;
                position: absolute;
                right: -200px;
                background-color: rgba(0, 50, 255, 0.4);
            } 
           
            center{
                font-weight: bold;
                color:blue;
            }
            
        </style>
        <script>
            function click1(){
                var str=document.getElementById("obj1").value;
                
                window.location="<%=request.getContextPath()%>/RegisterServlet?obj="+str;
              
            }
        </script>
    </head>

    <body>
        
    <center>

        <h1>欢迎来到中小学家长学生教师交互平台</h1>
        
        <div class="y1">

            <div class="y0">
                
                ${message}
                
            </div>

        <form method="post" action="<%=request.getContextPath()%>/LoginServlet" >
            

            <div class="x1">
                <p>用户名：<input type="text" id="username" name="username" size="30"/></p>
            </div>

            <div class="x2">
                <p>&nbsp&nbsp密码：<input type="password" id="password" name="password" size="30"/></p>
            </div>
                <!--<form method="post" action="<%=request.getContextPath()%>/EnterServlet" >-->





            <div class="x4">

                身份：
                <select name="obj" id="obj1">

                    <option  value="aa">学生</option>
                    <option  value="bb">教师</option>
                    <option  value="cc">家长</option>
                    <option  value="dd">管理员</option>


                </select>

            </div>


            <div class="x3">
                <p><input type="submit" value="登录" id="login" >
                    <input type="button" value="注册" id="register" onclick="click1();">
                </p>

            </div>
            
        </form>

 </div>
    </center>
        </div>
    <ul class="f1">
        <li></li>
    </ul>
    <ul class="f2">
        <li></li>
    </ul>
    <ul class="f3">
        <li></li>
    </ul>
    <ul class="f4">
        <li></li>
    </ul>

</body>
</html>
