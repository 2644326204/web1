<%-- 
    Document   : showjijin
    Created on : 2022-5-16, 11:37:26
    Author     : Administrator
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>安徽大学</title>
        
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
                  height:610px;
                  background: linear-gradient(to bottom right,white,#b1d478);
                  float:left;
                  margin-left: 0px;
                 
              }
              .u2{
                  width:940px;
                  height:610px;
                  float:left;
                  
              }
              
              
              .u0{
                  margin-top: 0px;
              }
              
              .u3{
                  width:200px;
                  height:610px;
                  background: linear-gradient(to bottom right,white,#b1d478);
                  
/*                  margin-left:11px;*/
                  padding-left: 30px;
                  float:left;
              }
              .u21{
                  height:100px;
              }
              .u22 .item{
                  position:absolute;
                  height:510px;
                  width:940px;
                 
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
                  background-color: rgba(0,0,0,0.7);
                  width:900px;
                  height:500px;
                  z-index: 99;
                  display:none;
                  color:gold;
                  font-size:150%;
                  font-weight: bold;
              }
              .y00{
                  width:900px;
                  height:380px;
              }
          </style>
          <script>
              window.onload=function(){
 
                  var time1=document.getElementById('time1');
                  
              var items=document.getElementById('u22').getElementsByTagName('img');
              
              var timer=null;
              var str1=' ',tim;
              var i=0;
              
              tim=new Date();
              str1+=tim.getFullYear()+'/';
              str1+=(tim.getMonth()+1)+'/';
              str1+=tim.getDate();
              
              time1.value=str1;
              var login=document.getElementById('login1');
                      //login.value="登陆";
                      login.value="登陆";
             var a="<%=session.getAttribute("a")%>";
             //alert(a);
                  if(a==="1"){
                      login.value="已经登录";
                  }
              
              
               timer=setInterval(function(){
                  if(i===3)
                      i=0;
                  
                  for(var j=0;j<items.length;j++)
                  items[j].style.opacity='0';
//               items[j].style.display='none';
               
              
                  items[i].style.opacity='1';
                  
                  i++;
                  
                  
                  
              },1000);
              
    };
          </script>
    </head>
    <body>
        <%@include file= "WEB-INF/jspfs/top4.jspf" %>
        <p> ${message} </p>
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
        
        <p>教授：</p>
    <button class="button" onclick="clickck1()">
	汪卫华</button>
        <p>副教授：</p>
<button class="button border-main" onclick="clickck1()">
	储德林</button>
<button class="button border-sub" onclick="clickck1()">
	杨锦宏</button>
    <p>教师简介：</p>
    
<button class="button border-main" onclick="clickck1()">
	芦苇</button>
<button class="button border-main" onclick="clickck1()">
	任珍珍</button>

    </div>
 <p>学生简介：</p>
    
<button class="button border-main" onclick="clickck1()">
	刘胜</button>
<button class="button border-main" onclick="clickck1()">
	宁宏伟</button>
 <button class="button border-main" onclick="clickck1()">
	桂腾</button>
<button class="button border-main" onclick="clickck1()">
	陆野</button>
 <button class="button border-main" onclick="clickck1()">
	陈志鹏</button>
<button class="button border-main" onclick="clickck1()">
	司聪</button>
 <p>学校链接：</p>
    
<button class="button border-main" onclick="clickanhuidaxue()">
	安徽大学</button>
    </div>    
    
    
    
    
    
    
    
    
</div>


<div class="u2">
    
    <div class="u21">
        
        <div class="Box"  id="box">
            <a target="_blank" id="a1" onmouseover="mouseover1()" onmouseleave="mouseleave1()" onclick="clickxu2()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp项目基金
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a target="_blank" id="a5" onmouseover="mouseover5()" onmouseleave="mouseleave5()" onclick="clickxu3()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp研究成果
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a target="_blank" id="a22" onmouseover="mouseover22()" onmouseleave="mouseleave22()" onclick="clickcomputer()">
                &nbsp&nbsp&nbsp计算机模拟组
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a target="_blank" id="a2" onmouseover="mouseover2()" onmouseleave="mouseleave2()" onclick="clickcailiao()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp材料组
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a target="_blank" id="a2" onmouseover="mouseover2()" onmouseleave="mouseleave2()" onclick="clicksun()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp光学组
            </a>
            
        </div>
         <div class="Box"  id="box">
            <a target="_blank" id="a2" onmouseover="mouseover2()" onmouseleave="mouseleave2()" onclick="click3()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp信息发布
            </a>
            
        </div>
        <div class="Box"  id="box">
            <a target="_blank" id="a2" onmouseover="mouseover2()" onmouseleave="mouseleave2()" onclick="clickxu5()">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp信息展示
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
                   
                  
                           <center>
        <table border="1">
            <tr>
                <th>基金号</th>
                <th>基金名</th>
                <th>基金作者</th>
                <th>基金描述</th>
            </tr>
            <c:forEach items="${bcs}" var="bc">
                <tr>
                    <td>${bc.num}</td>
                    <td>${bc.name}</td>
                    <td>${bc.owner}</td>
                    <td>${bc.text}</td>
                </tr>
            
             </c:forEach>
        </table>
        
         <div class="text-center margin-big-top">
                        ${pagination.pageBar} ${pagination.numPageBar}
                       </div>
    </center>
                             
                    
        </div>
    
</div >
<div class="u3">
<!--    1
            1.搜索框
            2.校内其他网站
-->

    
   <div class="sea" > <center><p><input type="submit" onclick="clicklogin()" id="login1" ></center>
       
   <center><button class="button" onclick="click1()">
	注册</button></center>
       <center><button class="button" onclick="clickck1()">
	修改个人信息</button></center>
   <center><input type="text" id="time1" disabled="disabled" style="text-align:center"></center>
   </div>
     <div class="SchoolManage" style="margin-top:300px;">
    <h1>核聚变工程组管理条例栏</h1>
    <ul class="nav nav-menu nav-tabs nav-navicon" id="nav-tabs2" style="background:#5a5ac1">
        <li><a onclick="clickx1()">关于时间作息</a></li>
        <li><a onclick="clickx2()">关于上课迟到</a></li>
        <li><a onclick="clickx3()">违规事件</a></li>
                        </ul>
                <center><a>more</a></center>
    
    
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
    <script>
         function click1(){
                 window.location.href="StudentRegister.jsp";
             }
         function click2(){
                 window.location.href="jijin.jsp";
             }
             function clickxu2(){
                 window.location.href="showjijinServlet";
             }
             function clickxu3(){
                 window.location.href="showresultServlet";
             }
             function clickxu5(){
                 window.location.href="showMessageServlet1";
             }
             function clickcomputer(){
                 window.location.href="computerServlet1?group1=1";
             }
             function clickcailiao(){
                 window.location.href="cailiaoServlet1?group1=2";
             }
             function clicksun(){
                 window.location.href="sunServlet1?group1=3";
             }
             function click3(){
                 window.location.href="fabuxinxi.jsp";
             }
        function clickx1(){
                 //var str=document.createTextNode("周一**********\n周二**********\n周三**********\n周四**********\n周五**********");
                 var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
             }
             function clickx(){
                 var dom=document.getElementById("y0");
                 dom.style.display="none";
             }
             function clickx2(){
                 var str="上课迟到，迟到15分钟禁止进入教室，迟到30分钟旷课，迟到******";
                 //var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
             }
             function clickx3(){
                 var str="打架吸烟喝酒一次，处分一次。两次叫家长，记大过一次，三次开除。";
                 //var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
             }
             function clickx5(){
                 var str="湖北汽车工业学院坐落在汽车城--湖北省十堰市，是全国唯一一所以汽车命名的本科院校，2008年被国家教育部评定为本科教学优秀学校。\n\
         2011年获批为教育部卓越工程师教育培养高校，同年，湖北省政府和东风汽车公司签订共建学校的协议，\n\
并决定由东风汽车公司与学校在武汉共建东风汽车工程师学院。2012年学校通过国家硕士学位授权建设工作验收，并获得硕士学位授予权。";
                 //var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
                 
             }
             function clickx6(){
                 var str="校长钟毓宁校党委书记程红兵党委副书记杨立志副校长简炜副校长毛立波";
                 //var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
                 
             }
             function clickx7(){
                 var str="学校与美国、德国、英国、韩国、法国等多个国家的一批知名高校建立了广泛的校际合作关系，每年均有学生\n\
         通过合作项目获得双方颁发的毕业证书和学位证书。学校积极开展各类富有汽车特色的校园文化活动，\n\
         有效提高学生的综合素质、艺术情趣和文化素养，促进了良好学风的形成。学校注重学生实践能力培养，\n\
开展各类暑期实践活动，争取让每个学生都能在实践活动中得到锻炼。    ";
                 //var str="周一**********n周二**********周三**********周四**********周五**********";
                 var dom1=document.getElementById("y0");
                 var dom=document.getElementById("y00");
                 
                 
                 dom.innerHTML=str;
                 //dom1.innerHtml=str;
                 //dom.appendChild(str);
                 dom1.style.display="block";
                 
             }
             function clickck(){
                 window.location.href="https://ke.qq.com/";
             }
             function clickck1(){
                 window.location.href="http://www.ahu.edu.cn/";
             }
             function clickck2(){
                 window.location.href="QueryTeachingTaskServlet";
             }
             function clickck3(){
                 window.location.href="SendProblems.jsp";
             }
             function clickck4(){
                 window.location.href="QueryProblem2Servlet";
             }
             function clickck5(){
                 window.location.href="JudgeTeacher.jsp";
             }
        </script>
</html>
