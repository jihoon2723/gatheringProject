<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<title>중고 거래</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

.div_ac_form { 
   position: absolute; 
   width: 100%; 
   height: 500px; 
   top: 20%;

   margin: 0px; /*margin:autoë¥¼ ì ´ì ©í ´ë   ë  ì ¼*/
}
.select {
     position: absolute; 
   width: 100%;
   height: 100px;
 }
</style>
<%@ include file="head.jsp" %>

<body class="w3-light-grey w3-content" style="max-width:1600px">
<br>
<br>
<br>
<br>
<br>
<div class="div_ac_form">
  <!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="https://img4.tmon.kr/cdn3/deals/2019/10/12/2551333370/catlist_3col_v2_bee69_0i5en.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>슬링백 나눔해요~</b></p>
        <p>밖에 돌아다닐때 필요한 슬링백 나눔해요~</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
    <a href=Marketin.jsp><img src="img/ggum.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity"></a>
      <div class="w3-container w3-white">
        <p><b>개껌 어때요??</b></p>
        <p>같이 산책하면 개껌 무나해드려요~~</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156626812532436735.jpg?gif=1&w=850&h=850&c=c" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>견주 차 뽑았다 날 데리고가 ~</b></p>
        <p>차에 울애기가 쓸 시트~</p>
      </div>
    </div>
  </div>
  <br>
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="img/umocar.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>강아지 유모차</b></p>
        <p>만나서 거래만 가능! 사용흔적 있음!!</p>
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="https://m.lifeofus.co.kr/web/product/big/201901/4d96d4c890096ae8eb77351d7920685f.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>밥, 물 그릇</b></p>
        <p>밥, 물 함께 놓을 수 있는 원목으로 만든 그릇입니다. 나눔해요~ 선착순 1명</p>
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="https://seoul-p-studio.bunjang.net/product/103957250_1_1561016620_w640.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>아x다스 빨노</b></p>
        <p>소형견에게 맞는 옷! 무나해드려요.</p>
      </div>
    </div>
  </div>
  <!-- Pagination -->
  <!-- 버튼 값 -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
</div>
</body>
<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>


</html>