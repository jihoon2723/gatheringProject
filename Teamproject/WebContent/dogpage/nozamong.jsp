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
<%@ include file="../head.jsp" %>
<body>
   <div
      style="text-align: center; border: 10px double black; border-radius: 30px; margin-left: 35%; margin-right: 20%; margin-top: 5%; width: 470px; height: 700px;">
      <div style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
         <img src="../0mem/nozamong.jpg" style="border-radius: 30px;">
      </div>
          <div style="margin-left: 1px;">
         <p>이름 : 노자몽</p>
         <p>성별 : 수컷 </p>
         <p>나이 : 7살</p>
         <p>무게 : 7kg </p>
         <p>주인 성별 : 남성 </p>
         <p>중성화여부 : X </p> 
      </div>
       <a href="../chat.jsp"><button type="button" value="maching" class="btn">연락하기</button></a>
   </div>
</body>
</html>