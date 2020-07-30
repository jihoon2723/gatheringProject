<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<%@ include file="head.jsp" %>

<body>
<br>
<br>
<br>
<br>
<br>
   <h2>강아지 정보</h2>
<form action="Surveyjoin.do" method="post" name="frm">
      두마리 이상의 강아지를 키우시나요?<br>
<input type="radio"  name="TwoDog" value="1">예
<input type="radio"  name="TwoDog" value="0">아니오
<br>
<br>
반려견의 성별은 무엇인가요?<br>
<input type="radio" name="Sex" value="0">남아
<input type="radio" name="Sex" value="1">여아
<br>
<br>
반려견의 나이는 몇살인가요?<br>
<input type="number" name="Age" min="0" max="30">살
<br>
<br>
반려견의 중성화 수술은 하셨나요?<br>
<input type="radio" name="Cut" value="1">예
<input type="radio" name="Cut" value="0">아니오
<br>
<br>
반려견의 몸무게는 어떻게 되나요?<br>
<input type="number" name="Weight" min="0" max="70">kg
<br>
<br>
반려견 주인님의 성별은 어떻게 되나요?<br>
<input type="radio" name="O_Sex" value="0">남자
<input type="radio" name="O_Sex" value="1">여자
<br>
<br>
1주일에 몇번 산책을 시키시나요?
<input type="number" name="WeekWalk" min="0" max="20">번
<br>
<br>
반려견의 사회성은 어느정도 인가요?
<input type="number" name="Sociality" min="0" max="10">[0~10]
<br>
<br>
산책시 평균 산책시간은 어떻게 되시나요?
<input type="number" name="WalkTime" min="0" max="300">분
<br>
<br>
반려견은 어느정도 활발 한가요?
<input type="number" name="Activity" min="0" max="10">[0~10]
<br>
<br>
당신의 반려견은 다른 강아지와 얼마나 자주 접촉하나요?(1주일 기준)
<input type="number" name="DogMeet" min="0" max="50">번
<br>
<br>
반려견의 공격성은 어느정도 인가요?
<input type="number" name="Agressive" min="0" max="10">[0~10]
<br>
<br>
<tr>
      <td colspan="2" align="center">
      <a href='main2.jsp'><input type="submit" value="확인" ></a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <input type="reset" value="취소">
      </td>
</tr>
<tr>
            <td colspan="2">${message}</td>
</tr>
   </form>
</body>
</html>