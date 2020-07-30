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
	height: 130px;
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
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script language="javascript">
	var imgArray = new Array();
	imgArray[0] = "0mem/gangsoon.jpg";
	imgArray[1] = "0mem/gomi.jpg";
	imgArray[2] = "0mem/love.jpg"
	imgArray[3] = "0mem/nozamong.jpg";
	imgArray[4] = "0mem/rullu.jpg";
	imgArray[5] = "0mem/sori.jpg";
	imgArray[6] = "0mem/yuri.jpg";
	
	function href(ok){
		console.log(ok)
		if(ok.includes("gangsoon.jpg")){
			location.href= "dogpage/gangsoon.jsp"
		}else if(ok.includes("gomi.jpg")){
			location.href= "dogpage/gomi.jsp"
		}else if(ok.includes("love.jpg")){
			location.href= "dogpage/love.jsp"
		}else if(ok.includes("nozamong.jpg")){
			location.href= "dogpage/nozamong.jsp"
		}else if(ok.includes("rullu.jpg")){
			location.href= "dogpage/rullu.jsp"
		}else if(ok.includes("sori.jpg")){
			location.href= "dogpage/sori.jsp"		
		}else if(ok.includes("yuri.jpg")){
			location.href= "dogpage/yuri.jsp"
			}
	}
	
		
	function showImage() {
		var imgNum = Math.round(Math.random() * 6);
		var objImg = document.getElementById("introImg");
		objImg.src = imgArray[imgNum];
	}
</script>

</head>
<body>
	<div
		style="text-align: center; border: 10px double brown; border-radius: 30px; margin-left: 35%; margin-right: 20%; margin-top: 5%; width: 470px; height: 470px;">
		<div onload="showImage()"
			style="margin-top: 5px; margin-left: 5px; margin-right: 5px;">
			<img id="introImg" name="dog" border="0" style="border-radius: 30px;" onclick="href(document.dog.src)">
		</div>
		<div style="margin-left: 1px;"></div>
		<button type="button" value="maching" onclick='showImage()'
			class="btn">매칭하기</button>
	</div>
</body>

</body>
</html>