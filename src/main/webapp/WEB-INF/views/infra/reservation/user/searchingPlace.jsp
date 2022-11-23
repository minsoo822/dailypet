<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<html>
<head>
	<%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>편의시설 찾기 · 예약</title>
</head>

<style type="text/css">

	.btn {
	    padding: 7px 12px;
	    color: white;
	    background-color: gray;
	}
	
	table, th {
		text-align: center;
		font-family: 'Malgun Gothic',dotum,'돋움',sans-serif;
	}
	
	.nav-pills .nav-link.active {
	    color: white;
	    background-color: gray;
	    font-weight: bold;
	}
	
	.form-select {
		height: 50px;
		font-size: 11px;
	}
	
	.nav-pills .nav-link {
		color: gray;
	}
	
	.form-control, .form-select {
		border-radius: 6px;
		color: black;
	}
	
	.col-3 p {
		font-weight: bold;
	}
	
	.gobooking {
		margin-top: 20px;
		text-align: center;
	}
	
	#offcol {
		height: 50px;
		padding: 6px 12px;
		margin: 0 0 15px;
	}

.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:400px;height:50px;margin:10px 0 30px 10px;padding:10px;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;color: #fff; background-color: #372d2b;border:1px solid white;border-radius: 6px;width: 60px;height: 30px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
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

</style>


<body>
    <!-- header s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <div class="totalContent">
	    <div class="content">
	        <div class="container">
	            <!-- <div class="row">
	            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
	                    <ul class="nav flex-column nav-pills me-3">
	                    	<li class="nav-item">
								<button class="nav-link active" type="button" aria-current="page" href="#">병원</button>
							</li>
							<li class="nav-item">
								<button class="nav-link" type="button" href="#">호텔</button>
							</li>
							<li class="nav-item">
								<button class="nav-link" type="button" href="#">미용실</button>
							</li>
							<li class="nav-item">
								<button class="nav-link" type="button" href="#">유치원</button>
							</li>
						</ul>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10"> -->
						<h4>예약시스템은 지역별 동물병원, 애견호텔/미용실/유치원만 가능합니다.</h4>
	                    <div class="map_wrap">
						    <div id="map" style="width:100%; height:100%; position:relative; overflow:hidden;"></div>
						    <div id="menu_wrap" class="bg_white">
						        <div class="option">
						        	<div>
						        		<form onsubmit="searchPlaces(); return false;">
						                    키워드 : <input type="text" value="강남 동물병원" placeholder="지역명+편의시설" id="keyword" size="15"> 
						                    <button type="submit">검색하기</button> 
						            	</form>
						        	</div>
						        </div>
						    </div>
						</div>
						<br>
						<h6>* 검색목록에서 원하시는 장소를 클릭하시면 예약페이지로 이동합니다.</h6>
						<br>
						<ul id="placesList"></ul>
						<div id="pagination"></div>
						<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
							<div class="offcanvas-header">
								<h5 class="offcanvas-title" style="font-size: 20px; margin-left: 35%"><b>플레이스 예약</b></h5>
								<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
							</div>
							<br>
							<div class="offcanvas-body">
								<div class="row">
									<div class="col-3">
										<p>예약장소</p>
									</div>
									<div class="col-9" id="offcol">
										<span id="ifrsPlace" name="ifrsPlace"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>위치</p>
									</div>
									<div class="col-9" id="offcol">
										<span id="ifrsLocation" name="ifrsLocation"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>전화번호</p>
									</div>
									<div class="col-9" id="offcol">
										<span id="ifrsTel" name="ifrsTel"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>고객명</p>
									</div>
									<div class="col-9">
										<c:out value="${user.ifmmName }"/>
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>연락처</p>
									</div>
									<div class="col-9">
										<c:out value="${user.ifmmTel }"/>
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>예약자명</p>
									</div>
									<div class="col-9">
										<input class="form-control" type="text" id="petname" name="ifrsPetName">
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>방문 목적</p>
									</div>
									<div class="col-9">
										<input class="form-control" type="text" id="purpose" name="ifrsPurpose" placeholder="간략하게 적어주세요.">
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>예약 날짜</p>
									</div>
									<div class="col-9">
										<input class="form-control" type="datetime-local" id="hopedate" name="ifrsHopeDate">
									</div>
								</div>
								<div class="row">
									<div class="col-3">
										<p>요청사항</p>
									</div>
									<div class="col-9">
										<input class="form-control" type="text" name="ifrsRequest" placeholder="간략하게 적어주세요.">
									</div>
								</div>
								<div class="gobooking">
									<a href="reservationPage.html">
										<button class="btn btn-secondary" type="button" id="bookingbtn">예약하기</button>
									</a>
								</div>
							</div>
						</div>
					<!-- </div>
				</div> -->
	        </div>
	    </div>
    </div>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b2c3303d6ae0328f82f572d94aa8946b&libraries=services"></script>
    
    <script type="text/javascript">
    
		// 마커를 담을 배열입니다
		var markers = [];
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.50913572075989, 127.04447225668967), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();  
		
		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		// 키워드로 장소를 검색합니다
		searchPlaces();
		
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {
		
		    var keyword = document.getElementById('keyword').value;
		
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }
		
		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch( keyword, placesSearchCB); 
		}
		
		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
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
		
		    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;
		
		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}
		
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {
		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">' +
		                '   <h5 id="placeName">' + places.place_name + '</h5>';
		
		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray" id="addressName">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span id="addressName">' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel" id="placeTel">' + places.phone  + '</span>' +
		                '</div>';           
		
		    el.innerHTML = itemStr;
		    el.className = 'item';
		    el.id='rv';
		    el.onclick = function () {
		    	
				var Pname = $("#placeName").text();
				var Paddr = $("#addressName").text();
				var Ptel = $("#placeTel").text();
				
//				alert(Pname + ", " + Paddr + ", " + Ptel);
				
				$("#ifrsPlace").html(Pname);
				$("#ifrsLocation").html(Paddr);
				$("#ifrsTel").html(Ptel);
			}
		
		    return el;
		}
		
		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
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
		 
	</script>
	
	<script type="text/javascript">

	/*	 		
		function openRV() {
			var Pname = $("#placeName").text();
			var Paddr = $("#addressName").text();
			var Ptel = $("#placeTel").text();
			
//			alert(Pname + ", " + Paddr + ", " + Ptel);
			
			$("#ifrsPlace").html(Pname);
			$("#ifrsLocation").html(Paddr);
			$("#ifrsTel").html(Ptel);
		}
*/		
/* 		
		rv2 = function() {
			//현재 row의 정보 가져오기 
			var thisRow = $(this).closest('#rv2'); 
		  
			//이름 input 값 가져오기
			var Pname = thisRow.find('#placeName').val();
			//주소 input 값 가져오기
			var Paddr = thisRow.find('#addressName').val();
			//전화번호 input 값 가져오기
			var Ptel = thisRow.find('#placeTel').val();
			
			alert(Pname + ", " + Paddr + ", " + Ptel);
			
			$("#ifrsPlace").val(Pname);
			$("#ifrsLocation").val(Paddr);
			$("#ifrsTel").val(Ptel);
		  
		}
*/	
	</script>
	
</body>
</html>