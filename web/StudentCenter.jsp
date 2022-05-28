<%-- 
    Document   : StudentCenter
    Created on : 2019-4-11, 15:05:27
    Author     : kun
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>中小学教师学生家长平台 学生中心界面</title>
        
        <link href="css/pintuer.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.js" type="text/javascript">

        </script>
        <script src="js/pintuer.js" type="text/javascript">

        </script>
        
          <link rel="stylesheet" type="text/css" href="css/css2.css"/>
          <style>
               body{
                  background:rgba(50,170,150,0.5);
              }
              .u1{
                  width:370px;
                  height:600px;
                  background: linear-gradient(to bottom right,white,#b1d478);
                  float:left;
                  margin-left: 80px;
                 
              }
              .u2{
                  width:660px;
                  height:600px;
                  float:left;
                  
              }
              
              
              .u0{
                  margin-top: 30px;
              }
              
              .u3{
                  width:370px;
                  height:600px;
                  background: linear-gradient(to bottom right,white,#b1d478);
                  
/*                  margin-left:11px;*/
                  padding-left: 30px;
                  float:left;
              }
              .u21{
                  height:200px;
              }
              .u22 .item{
                  position:absolute;
                  height:400px;
                  width:660px;
                 
              }
              .Box{
                  width:108px;
                  height:62px;
                  border:1px solid blue;
                  margin-top: 5px;
                  margin-left: 16px;
                  margin-right: 2px;
                  float:left;
                  align-content: center;
                  line-height: 50px;
                 
                  border-radius: 29px;
                  background: linear-gradient(to bottom right,#59ff00,#b1d478);
                  color:blue;
              }
              a{
                  color:blue;
                  font-weight: bold;
              }
              .u21{
                  background:linear-gradient(to bottom left,#59ff00,#b1d478);
              }
              .studyInternet{
                  position:relative;
              }
              .u5 ul{
                  display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                list-style: none;
              }
              .uu{
                   display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                list-style: none;
                  
              }
              .uu li{
                  border: 0;
                width: 100px; /*每个元素的初始化宽度*/
                text-align: center;
                margin-top: 10px;
                margin-bottom: 10px;
                        

              }
              .y0{
                  position:absolute;
                  left:300px;
                  top:200px;
                  background-color: rgba(100,100,100,0.5);
                  width:900px;
                  height:500px;
                  z-index: 99;
                  display:none;
                  color:greenyellow;
              }
              .y00{
                  width:900px;
                  height:380px;
              }
          </style>
         
    </head>
    <body>
        <%@include file= "WEB-INF/jspfs/top4.jspf" %>
        <div class="y0" id="y0">
             <center>
                <div id="y00" class="y00"></div>
                 <button onclick="clickx()">关闭</button>
             </center>
             
         </div>
        
        
        
        
        
         <div class="u0">
<!--            
                1.左边部分
                2.中间部分
                3.右边部分
-->
<div class="u1">
    <div class="websit">
    <button class="button">
	学校官网网站</button>
<button class="button border-main">
	教务系统网站</button>
<button class="button border-sub">
	教师服务网站</button>
    
    
<button class="button border-main">
	学生服务网站</button>
<button class="button border-main">
	招聘教师网站</button>

    </div>
    
    
    
    <div class="SchoolManage" style="margin-top:100px;">
    <h1>学校管理条例栏</h1>
    <ul class="nav nav-menu nav-tabs nav-navicon" id="nav-tabs2" style="background:#5a5ac1">
        <li><a onclick="clickx1()">关于时间作息</a></li>
        <li><a onclick="clickx2()">关于上课迟到</a></li>
        <li><a onclick="clickx3()">打架抽烟喝酒等等事件</a></li>
                        </ul>
                <center><a>more</a></center>
    
    
    </div>
    
    <div class="studyInternet">
       
                   <button style="border-radius: 100%;width: 70px;height:70px; position:absolute; left:80px;top:30px; display: none;" id="btn11">腾讯课堂</button>  
            
                   <button style="border-radius: 100%;width: 70px;height:70px;  position:absolute; left:80px; top:100px; display: none;" id="btn22" >新浪公开课</button>  
            
            
                    <button style="border-radius: 100%;width: 70px;height:70px;  position:absolute;left:150px; top:10px; display: none;" id="btn33">网易公开课</button>  
            
            
                    <button style="border-radius: 100%;width: 70px;height:70px; left:150px;top:80px; position:absolute; " id="btn1" onmousemove="mouseoverbtn() " onmouseleave="mouseleavebtn()">课程资源</button>  
            
            
                    <button style="border-radius: 100%;width: 70px;height:70px;  position:absolute; left:150px; top:150px; display: none;" id="btn55" >中国大学</button>  
            
                   <button style="border-radius: 100%;width: 70px;height:70px;  position:absolute; left:220px;top:30px; display: none;" id="btn66">学堂在线</button>  
            
                   <button style="border-radius: 100%;width: 70px;height:70px;  position:absolute; left:220px; top:100px; display: none;" id="btn77">好大学在线</button>  
           
       
        
    </div>
    
    
    
</div>


<div class="u2">
    
    <div class="u21">
        
        <div class="Box"  id="box">
            <a href="QueryTeachingTaskServlet" target="_blank" id="a1" onmouseover="mouseover1()" onmouseleave="mouseleave1()">
                &nbsp&nbsp查看教学任务
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a href="SendProblems.jsp" target="_blank" id="a5" onmouseover="mouseover5()" onmouseleave="mouseleave5()">
                &nbsp向教师提出疑问
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a href="QueryProblem2Servlet" target="_blank" id="a22" onmouseover="mouseover22()" onmouseleave="mouseleave22()">
                &nbsp查看疑问回答
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a href="JudgeTeacher.jsp" target="_blank" id="a2" onmouseover="mouseover2()" onmouseleave="mouseleave2()">
                &nbsp&nbsp&nbsp&nbsp&nbsp评价教师
            </a>
            
        </div>
        
<!--        <div class="Box"  id="box">
            <a href="" target="_blank" id="a3" onmouseover="mouseover3()" onmouseleave="mouseleave3()">
                &nbsp&nbsp删除用户信息
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a href="" target="_blank" id="a4" onmouseover="mouseover4()" onmouseleave="mouseleave4()">
                &nbsp&nbsp修改用户信息
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a href="" target="_blank" id="a11" onmouseover="mouseover11()" onmouseleave="mouseleave11()">
                &nbsp&nbsp关于升学处理
            </a>
            
        </div>
        
        <div class="Box"  id="box">
            <a href="" target="_blank" id="a22" onmouseover="mouseover22()" onmouseleave="mouseleave22()">
                &nbsp学校信息更新
            </a>
            
        </div>-->
<!--       <button class="button">
	默认</button>
<button class="button border-main">
	主色</button>
<button class="button border-sub">
	辅色</button>
<button class="button border-back">
	背景色</button>
<button class="button border-mix">
	融合色</button>
<button class="button border-dot">
	点缀色</button>
<button class="button border-black">
	黑色</button>
<button class="button border-gray">
	灰色</button>
<button class="button border-white">
	白色</button>-->
        
    </div>
    
    
    <div class="u22" id="u22">
                   
                  
                            <div class="item"><img src="images/11.jpg" alt="图片1" title="校园风光1" width="100%" height="100%"/></div>
                            <div class="item"><img src="images/22.jpg" alt="图片2" title="校园风光2" width="100%" height="100%"/></div>
                            <div class="item"><img src="images/33.jpg" alt="图片3" title="校园风光3" width="100%" height="100%"/></div>
                            
                    
                    
        </div>
    
</div >
<div class="u3">
<!--    1
            1.搜索框
            2.校内其他网站
-->

    
   <div class="sea" ><input type="text" placeholder="搜索内容" size="30" style="line-height: 80px;"/>
    <input type="image" src="images/888.png" /></div>
    
    <div class="schoolIntroduce" style="margin-top: 50px;">
    <h1>学校介绍栏</h1>
    <ul class="nav nav-menu nav-tabs nav-navicon" id="nav-tabs2">
        <li><a onclick="clickx5()">学校介绍</a></li>
        <li><a onclick="clickx6()">学校师资力量</a></li>
        <li><a onclick="clickx7()">学校今年来发展</a></li>
                        </ul>
    </div>

    



</div>



         </div>
         
             
<!--            
                   1.底角            最下边部分
-->

<!--<div class="u5">
    <ul>
        <li><a href="#">招贤纳士</a></li>
        <li><a href="#">产品中心</a> </li>
                <li><a href="#">技术反馈</a> </li>
                <li><a href="#">留言反馈</a> </li>
                <li><a href="#">联系方式</a> </li>
        
    </ul>
    <p>联系电话：8498348987<p>
    
</div>-->
         <%@include file= "WEB-INF/jspfs/foot.jspf" %>
    </body>
</html>
