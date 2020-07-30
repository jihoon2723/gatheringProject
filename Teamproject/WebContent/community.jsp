<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>소통</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}
w3-col m7{
text-align: center;
width: 100%;
}
</style>
<%@ include file="head.jsp" %>
<body class="w3-theme-l5" style="margin-top: 5%">
<br>
<br>
<br>
<br>
<br>
    <!-- Middle Column -->
    <div class="w3-col m7">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">검색</h6>
              <p contenteditable="true" class="w3-border w3-padding">Status: Feeling Blue</p>
              <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i>  Post</button> 
            </div>
          </div>
        </div>
      </div>
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/userimg.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">1 min</span>
        <h4>홍준뜨</h4><br>
        <hr class="w3-clear">
        <img src="img/Hong's dog.jpg" style="width:100%">
        <p>울 애긔 보고 가^^</p>
          <div class="w3-row-padding" style="margin:0 -16px">
            <div>
              <img class="w3-left"src="img/good.png" style="width: 25px; height: 25px; " alt="좋아요" class="w3-margin-bottom">
              <p id="likeNum" style="margin-left:10%; font-size: 20px;"> 0</p>
            </div>
          </div>
        <hr>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom" onclick="like_btn();"><i class="fa fa-thumbs-up"></i>  Like</button>
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom w3-right"><i class="fa fa-comment"></i>  Comment</button>
         
      </div>
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/userimg.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">16 min</span>
        <h4>지훈쓰</h4><br>
        <hr class="w3-clear">
        <img src="img/jihun's dog.jpg" style="width:100%">
        <p></p>
        <div class="w3-row-padding" style="margin:0 -16px">
            <div>
              <img class="w3-left"src="img/good.png" style="width: 30px; height: 30px" alt="좋아요" class="w3-margin-bottom">
              <p id="likeNum2" style="margin-left:10%; font-size: 20px;"> 0</p>
            </div>
          </div>
          <hr>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom" onclick="like_btn2();"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>  

      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="img/userimg.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">32 min</span>
        <h4>태석뀨</h4><br>
        <hr class="w3-clear">
        <p>또 나만 없쥐....ㅜㅜ</p>
         <div class="w3-row-padding" style="margin:0 -16px">
            <div>
              <img class="w3-left"src="img/good.png" style="width: 30px; height: 30px" alt="좋아요" class="w3-margin-bottom">
              <p id="likeNum3" style="margin-left:10%; font-size: 20px;"> 0</p>
            </div>
          </div>
          <hr>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom" onclick="like_btn3();"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div> 
      
    <!-- End Middle Column -->
    </div>

    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>
<script>
// Accordion
function myFunction(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
    x.previousElementSibling.className += " w3-theme-d1";
  } else { 
    x.className = x.className.replace("w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-theme-d1", "");
  }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

</script>
<script>
	function like_btn() {
		var likeNum = document.getElementById("likeNum");
		var n = Number(likeNum.innerHTML);
		likeNum.innerHTML = n+1;
	}
	function like_btn2() {
		var likeNum = document.getElementById("likeNum2");
		var n = Number(likeNum.innerHTML);
		likeNum.innerHTML = n+1;
	}
	function like_btn3() {
		var likeNum = document.getElementById("likeNum3");
		var n = Number(likeNum.innerHTML);
		likeNum.innerHTML = n+1;
	}
</script>
</body>
</html> 
