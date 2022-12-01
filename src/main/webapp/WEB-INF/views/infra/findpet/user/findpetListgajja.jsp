<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <%@include file="../../../common/xdmin/include/head.jsp"%>
    <title>유기동물 리스트</title>
    
    <style type="text/css">
    /* div {
    	border: 1px solid orange;
    } */
    .Search {
    	margin-top: 50px; 
    	margin-bottom: 20px;
    	display: flex; 
    	justify-content: end;
    }
    .Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 80px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .imgsize {
    	width: 258px;
    	height: 218px;
    	max-width: 100%;
    	max-height: 100%;
    }
    
    .nav-tabs {
		    border-bottom: 1px solid #ddd;
		}
		
		.nav {
		    padding-left: 0;
		    margin-bottom: 0;
		    list-style: none;
		}
		
		.nav-tabs>li {
		    float: left;
		    margin-bottom: -1px;
		}
		
		.nav>li {
		    position: relative;
		    display: block;
		}
		
		.nav-tabs>li>.active {
		    margin-right: 2px;
		    line-height: 1.42857143;
		    border: 1px solid transparent;
		    border-radius: 4px 4px 0 0;
		    background-color: #C9AF96 !important;
		    color: white !important;
		}
		
		.nav-tabs>li>.nav-link {
		    margin-right: 2px;
		    line-height: 1.42857143;
		    border: 1px solid transparent;
		    border-radius: 4px 4px 0 0;
		    color: #aa9144;
		}
		
		.nav>li>.nav-link {
		    position: relative;
		    background-color: transparent;
		    display: block;
		    padding: 10px 15px;
		}
		
		.fade {
			opacity: 100;
		}
    </style>
    
</head>

<body>
	<!-- header s -->
   	<%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
	<form id="searchForm" method="post">
	<input type="hidden" name="iffpSeq" value="${vo.iffpSeq }">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		<div class="totalContent">
	   		 <div class="container" style="width: 1140px;">
			    <div class="row">
				    <div class="col Search">
			    		<button class="Searchbtn" type="button" id="searchGo"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
			    		<button class="Searchbtn" type="button" id="formGo" style="margin-left: 20px;"><i class="fa-regular fa-plus"></i></button>
			    	</div>
			    </div>
				<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 1158.2px">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="korea-tab" data-bs-toggle="tab" data-bs-target="#koreaTab" type="button" role="tab" aria-controls="koreaTab" aria-selected="true">전국</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="seoul-tab" data-bs-toggle="tab" data-bs-target="#seoulTab" type="button" role="tab" aria-controls="seoulTab" aria-selected="false">서울</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="gyeonggi-tab" data-bs-toggle="tab" data-bs-target="#gyeonggiTab" type="button" role="tab" aria-controls="gyeonggiTab" aria-selected="false">경기</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="incheon-tab" data-bs-toggle="tab" data-bs-target="#incheonTab" type="button" role="tab" aria-controls="incheonTab" aria-selected="false">인천</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="gangwon-tab" data-bs-toggle="tab" data-bs-target="#gangwonTab" type="button" role="tab" aria-controls="gangwonTab" aria-selected="false">강원</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="busan-tab" data-bs-toggle="tab" data-bs-target="#busanTab" type="button" role="tab" aria-controls="busanTab" aria-selected="false">부산</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="daegu-tab" data-bs-toggle="tab" data-bs-target="#daeguTab" type="button" role="tab" aria-controls="daeguTab" aria-selected="false">대구</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="daejeon-tab" data-bs-toggle="tab" data-bs-target="#daejeonTab" type="button" role="tab" aria-controls="daejeonTab" aria-selected="false">대전</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="gwangju-tab" data-bs-toggle="tab" data-bs-target="#gwangjuTab" type="button" role="tab" aria-controls="gwangjuTab" aria-selected="false">광주</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="ulsan-tab" data-bs-toggle="tab" data-bs-target="#ulsanTab" type="button" role="tab" aria-controls="ulsanTab" aria-selected="false">울산</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="sejong-tab" data-bs-toggle="tab" data-bs-target="#sejongTab" type="button" role="tab" aria-controls="sejongTab" aria-selected="false">세종</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="chungbuk-tab" data-bs-toggle="tab" data-bs-target="#chungbukTab" type="button" role="tab" aria-controls="chungbukTab" aria-selected="false">충북</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="chungnam-tab" data-bs-toggle="tab" data-bs-target="#chungnamTab" type="button" role="tab" aria-controls="chungnamTab" aria-selected="false">충남</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="gyeongbuk-tab" data-bs-toggle="tab" data-bs-target="#gyeongbukTab" type="button" role="tab" aria-controls="gyeongbukTab" aria-selected="false">경북</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="gyeongnam-tab" data-bs-toggle="tab" data-bs-target="#gyeongnamTab" type="button" role="tab" aria-controls="gyeongnamTab" aria-selected="false">경남</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="jeonbuk-tab" data-bs-toggle="tab" data-bs-target="#jeonbukTab" type="button" role="tab" aria-controls="jeonbukTab" aria-selected="false">전북</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="jeonnam-tab" data-bs-toggle="tab" data-bs-target="#jeonnamTab" type="button" role="tab" aria-controls="jeonnamTab" aria-selected="false">전남</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="jeju-tab" data-bs-toggle="tab" data-bs-target="#jejuTab" type="button" role="tab" aria-controls="jejuTab" aria-selected="false">제주</button>
					</li>
				</ul>
				<div class="content" style="padding-top: 50px;">
			        <div class="container">
			            <div class="row">
			            	<c:forEach items="${selectKorea }" var="selectKorea" varStatus="status">
				                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
				                    <div class="project-img mb30">
				                        <a href="javascript:goView(${selectKorea.iffpSeq })" class="imghover">
				                        	<img class="imgsize" src="${selectKorea.path }${selectKorea.uuidName}" class="img-responsive" alt="">
				                        </a>
				                    </div>
				                </div>
			                </c:forEach>
			            </div>
			        </div>
			         <!-- pagination s -->
					<%@include file="../../../common/xdmin/include/pagination.jsp"%>
					<!-- pagination e -->
    			</div>
	    	</div>
	    </div>
	    <!-- footer s -->
	    <%@include file="../../../common/xdmin/include/footer.jsp"%>
	    <!-- footer e -->
	    </div>
    </form>
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    
	    var goUrlSearchList = "/findpet/findpetSearchForm";
	    var goUrlForm = "/findpet/findpetMod";
	    var goUrlView = "/findpet/findpetView";
	    var goUrlList = "/findpet/findpetList";
	    
	    
	    var seq = $("input:hidden[name=iffpSeq]");
	    var form = $("#searchForm");
	    
	    $("#searchGo").on("click", function(){
	    	$(location).attr("href", goUrlSearchList).submit();
		});
	
	    $("#formGo").on("click", function(){
	    	$(location).attr("href", goUrlForm).submit();
		});
	    
	    goView = function(iffpSeq) {
	    	seq.attr("value", iffpSeq);
	    	form.attr("action", goUrlView).submit();
	    } 
	    goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action",goUrlList).submit();
		}
    </script>
    
</body>

</html>
