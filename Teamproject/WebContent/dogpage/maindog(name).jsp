<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
p {
   font-size: 20px;
}

.btn {
   width: 180px;
   height: 50px;
   font-size: 30px;
   font-family: 'Nanum Gothic';
   color: white;
   line-height: 50px;
   text-align: center;
   background: brown;
   border: solid 2px grey;
   border-radius: 12px;
}
</style>
<%
String Name = request.getParameter("Name");
String Sex = request.getParameter("Sex");
String Age = request.getParameter("Age");
String Weight = request.getParameter("Weight");
String O_Sex = request.getParameter("O_Sex");
String Cut = request.getParameter("Cut");%>
<body>
   <div
      style="text-align: center; border: 10px double black; border-radius: 30px; margin-left: 35%; margin-right: 20%; margin-top: 5%; width: 470px; height: 700px;">
      <div style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
         <img src="img/pudle.jpg" style="border-radius: 30px;">
      </div>
          <div style="margin-left: 1px;">
         <p>이름 :<%out.println(Name); %></p>
         <p>성별 :<%out.println(Sex); %> </p>
         <p>나이 :<%out.println(Age); %> </p>
         <p>무게 :<%out.println(Weight); %> </p>
         <p>주인 성별 :<%out.println(O_Sex); %> </p>
         <p>중성화 :<%out.println(Cut); %></p> 
      </div>
      <button type="button" value="maching" class="btn">연락하기</button>
   </div>
</body>
</html>