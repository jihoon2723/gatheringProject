<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>키워드로 장소검색하고 목록으로 표출하기</title>
      <style>
      
#map{
width:70%;
height:400px;

}  
.map_wrap, .map_wrap * {
margin:0;
padding:0;
font-family:'Malgun Gothic',dotum,'돋움',sans-serif;
font-size:12px;}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active{
color:#000;
text-decoration: none;}

.map_wrap {
position:relative;
width:70%;
height:400px;}

.munu_wrap.img{
   float: right;
   
}

#menu_wrap {
position:relative;
top:0;
left:0;
bottom:0;
width:400px;;
height:500px;
float: right;
overflow-y:auto;
background:rgba(219, 188, 104, 0.7);
z-index: 1;
font-size:12px;
border-radius: 10px;}

.bg_white {background:#fff;}

#menu_wrap hr {
display: block;
 height: 1px;
 border: 0;
  border-top: 2px solid #5F5F5F;
  margin:3px 0;}
  
#menu_wrap .option{text-align: center; border: 1px}

#menu_wrap .option{text-align: center;}

#menu_wrap .option p {margin:10px 0; text-align: center;}  

#menu_wrap .option button {margin-left:5px;}

#placesList li {list-style: none;}
#placesList .item {

border-bottom:1px solid #888;
overflow: hidden;
cursor: pointer;
min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {
text-overflow: ellipsis;
overflow: hidden;
white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {
padding-left:26px;
background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;} 
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
.test{
   margin-top: 100px;
}
</style>
   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=03b0a91a8efc65a1ac5dbb02518d8e00&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
      
</head>

<body>
   
   <%@ include file="head.jsp" %>
   
   
   <div class="test"><!-- 전체크기 -->
   
   
   <div class="menu_wrap">
   <img style=" float:right;  width: 290px; height: 100px;" src="img/icon/searchresult.png"><!-- 검색결과 -->
   <div id="menu_wrap" class="bg_white">
    <hr>
    <ul  id="placesList"></ul>
  <!--   <div id="pagination"></div> --><!-- 페이지넘버 -->
    </div>
    </div>
     
      

   <div class="wrap">
   <div class="map_wrap">
    <div id="map" ><!-- 지도 표시 영역 --></div> 
   </div> 
   <img style="width:200px; height:80px ;" alt="" src="img/icon/mapsize.png">
   <img style="width:200px; height:80px ;" alt="" src="img/icon/locationchoice.png">
       <div class="option">
         <div style="border: 1px solid gold; float:left;" id="choice">
              <input style=" width: 100px; height: 100px;" type="image" id="button1" src="img/icon/plus.png" onclick="zoomIn()"/>
             <input style=" width: 100px; height: 100px;" type="image" id="button1" src="img/icon/minus.png" onclick="zoomOut()"/>
             </div> 
             <div style="border: 1px solid gold; float: left;" id="choice" >
                <input style=" width: 100px; height: 100px;" type="image" id="button1" src="img/icon/park.png" onclick="searchPlaces1('공원');" />
               <input style=" width: 100px; height: 100px;" type="image" id="button1" src="img/icon/coff.png" onclick="searchPlaces1('애견카페');" />
               <input style=" margin-top:10px; width: 110px; height: 110px;" type="image" id="button1" src="img/icon/hospital.png" onclick="searchPlaces1('동물병원');" />
              <input style=" width: 100px; height: 100px;" type="image" id="button1" src="img/icon/dogshop.png" onclick="searchPlaces1('애견샵');" />
            </div>
        </div>
</div>
</div>
</body>
<script>

// 마커를 담을 배열입니다
var markers = [];



 
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 mapOption = {
     center: new kakao.maps.LatLng(35.160023024075024,126.85157522374936), // 지도의 중심좌표
     level: 7// 지도의 확대 레벨
 }; 

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});
 var bounds1 = map.getBounds();
/* ps.keywordSearch( keyword, placesSearchCB,{category_group_code:‘CE7,FD6’,bounds: bounds1});
 */
// 키워드 검색을 요청하는 함수입니다
function searchPlaces1(searchkey) {
    console.log(searchkey);
    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( searchkey, placesSearchCB/* ,bounds: bounds1 */); 
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    


// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
       console.log(data);

       
        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}


// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {
   
   
   //HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
   if (navigator.geolocation) {
       
       // GeoLocation을 이용해서 접속 위치를 얻어옵니다
       navigator.geolocation.getCurrentPosition(function(position) {
           
           var lat = position.coords.latitude, // 위도
               lon = position.coords.longitude; // 경도
           
           var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
               message = '<div style="padding:5px;">현재위치</div>'; // 인포윈도우에 표시될 내용입니다
           
           // 마커와 인포윈도우를 표시합니다
           displayMarker(locPosition, message);
               
         });
       
   } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
       
       var locPosition = new kakao.maps.LatLng(lat, lon),    
           message = 'geolocation을 사용할수 없어요..'
           
       displayMarker(locPosition, message);
   }
   
    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(3);
    
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}



// 지도 레벨을 표시합니다
displayLevel();
 
// 지도 레벨은 지도의 확대 수준을 의미합니다
// 지도 레벨은 1부터 14레벨이 있으며 숫자가 작을수록 지도 확대 수준이 높습니다
function zoomIn() {        
    // 현재 지도의 레벨을 얻어옵니다
    var level = map.getLevel();
    
    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
    map.setLevel(level - 2);
    
    // 지도 레벨을 표시합니다
    displayLevel();
}    

function zoomOut() {    
    // 현재 지도의 레벨을 얻어옵니다
    var level = map.getLevel(); 
    
    // 지도를 1레벨 올립니다 (지도가 축소됩니다)
    map.setLevel(level + 2);
    
    // 지도 레벨을 표시합니다
    displayLevel(); 
}    
 
function displayLevel(){
    var levelEl = document.getElementById('maplevel');
    levelEl.innerHTML = '현재 지도 레벨은 ' + map.getLevel() + ' 레벨 입니다.';
}
</script>
</html>