<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>유기동물 등록</title>
	
	<style type="text/css">
	/* div {
		border: 1px solid orange;
	} */	
	.form-control {
		color: black;
	}
	.petImg {
		background: #f3f0eb;
		width: 446px;
		height: 550px;
		max-height: 100%;
		max-width: 100%;
	}
	.propileImg {
		width: 80px;
		height: 80px;
		max-height: 100%;
		max-width: 100%;
	}
	.text {
		text-align: left;
		font-size: 13pt;
		font-weight: bold;
		margin-top: 14px;
	}
	.Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 45px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: auto;
    	margin-right: auto;
   	}
   	.Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .btnSave {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 55px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-top: 30px;
    	margin-right: 20px;
    }
    .btnSave:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .form-control {
    	color: #000;
    }
	</style>
</head>


<body>
	<!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="findModForm" enctype="multipart/form-data">
    <input type="hidden" name="iffpSeq" value="${item.iffpSeq }">
    <input type="hidden" name="ifmmSeq" value="${sessSeq}">
    <div class="totalContent">
	    <div class="content">
	        <div class="container">
				<div class="row mb-5">
	                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div class="row">
							<div class="col">
							    <img class="petImg" src="${item.path }${item.uuidName}" id="image">
							</div>
						</div>	
						<div class="row">
							<div class="col">
								<input type="file" id="file" class="form-control" name="findpet_img" style="width: 446px;">
							</div>
						</div>	
					</div>	
	                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								이름
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="iffpName" value="${item.iffpName }" placeholder="목걸이등에 이름이 있다면 적어주세요">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text text-center">
								품종
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="iffpBrred" value="${item.iffpBrred }" placeholder="모르신다면 적지않으셔도 무방합니다">
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								성별
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="iffpGender" value="${item.iffpGender }" placeholder="모르신다면 적지않으셔도 무방합니다">
							</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text text-center">
								특징
							</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="iffpCharacteristic" value="${item.iffpCharacteristic }" placeholder="간단한 특징이라도 있다면 작성해주세요">
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								위탁장소
							</div>
							<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 ge-1">
								<input type="text" class="form-control" name="iffpAnimalShelterzipCode" value="${item.iffpAnimalShelterzipCode }" readonly placeholder="우편번호" id="zip_code">
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12" style="padding: 0px 0px;">
								<button type="button" class="Searchbtn" onclick="sample4_execDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-12" style="padding: 0px 0px;">
								<button type="button" class="Searchbtn" id="address_reset"><i class="fa-solid fa-rotate-left"></i></button>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
								<input type="text" class="form-control" name="iffpAnimalShelter1" value="${item.iffpAnimalShelter1 }" readonly placeholder="도로명 주소" id="address">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								&nbsp;
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
								<input type="text" class="form-control" name="iffpAnimalShelter2" value="${item.iffpAnimalShelter2 }" placeholder="상세 주소" id="address_detail">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								발견장소
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
								<input type="text" class="form-control" name="iffpSpotPlace" value="${item.iffpSpotPlace }" placeholder="정확한 장소를 입력해주세요.">
							</div>
						</div>
						<div class="row">
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">
								발견일시
							</div>
							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
								<input class="form-control" type="datetime-local" name="iffpSpotDate" value="${item.iffpSpotDate }" id="hopedate" name="hopedate">
							</div>
						</div>
	                </div>
				</div>
				<div class="row">
					<div class="col" style="display: flex; justify-content: flex-end;">
						<button type="button" class="btnSave" id="backBtn">취소</button>
						<button type="button" class="btnSave" id="saveBtn">저장</button>
					</div>
				</div>
				<hr>
	        </div>
	    </div>
	</div>
	</form>
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    <script type="text/javascript">
    
    var findpetInst = "/findpet/findpetInst";
    var findpetUpdt = "/findpet/findpetUpdt";
    var findpetList = "/findpet/findpetList";
    
    var iffpSeq = $("input:hidden[name=iffpSeq]")
    var form = $("#findModForm")
    
    $("#saveBtn").on("click", function(){
    	if(iffpSeq.val() == "0" || iffpSeq.val() == "") {
	    	form.attr("action", findpetInst).submit();
    	} else {
    		form.attr("action", findpetUpdt).submit();
    	}
    });
    $("#backBtn").on("click", function(){
    	form.attr("action", findpetList).submit();
    });
    	
    /* 카카오지도API */
  	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                // 커서를 상세주소로 이동한다
                document.getElementById('address_detail').focus();
                
            }
        }).open();
    }
	
	//주소 리셋
	$("#address_reset").on("click", function() {
		$("#zip_code").val('');
		$("#address").val('');
		$("#address_detail").val('');
	})
	//이미지 미리보기
    $("#file").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#image").attr("src", img);
	});
    
    </script>
    
</body>

</html>