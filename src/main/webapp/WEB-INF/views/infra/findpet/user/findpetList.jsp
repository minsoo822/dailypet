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
	<input type="hidden" name="iffpSpotLocation" id="iffpSpotLocation" value="">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		<div class="totalContent">
	   		 <div class="container" style="width: 1175px;">
			    <div class="row">
				    <div class="col Search">
			    		<button class="Searchbtn" type="button" id="searchGo"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
			    		<button class="Searchbtn" type="button" id="formGo" style="margin-left: 20px;"><i class="fa-regular fa-plus"></i></button>
			    	</div>
			    </div>
				<ul class="nav nav-tabs">
					<c:forEach items="${codeList }" var="item" varStatus="status" begin="0" end="17" step="1">
					  <li class="nav-item">
					    <a class="nav-link" id="category${item.ifcdSeq}" name="crArea${item.ifcdSeq}" onclick="area(${item.ifcdSeq})" aria-current="page" href="#"><c:out value="${item.ifcdName }" /></a>
					  </li>
					</c:forEach> 
				</ul>
				  <!-- <li class="nav-item">
				    <a class="nav-link" href="#">Link</a>
				  </li> -->
				<div class="content" style="padding-top: 50px;">
			        <div class="container">
			            <div class="row">
			            	<c:forEach items="${categorylist }" var="list" varStatus="status">
				                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
				                    <div class="project-img mb30">
				                        <a href="javascript:goView(${list.iffpSeq })" class="imghover">
				                        	<img class="imgsize" src="${list.path }${list.uuidName}" class="img-responsive" alt="">
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
	    
	    var iffpSpotLocation = $("input:hidden[name=iffpSpotLocation]");
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
	    
	    
	    area = function(key) {
    		//$("#asdfq").addClass('active');
    		//name="category" 
    		for(var i=11; i<28; i++){
    			$('a[name*="crArea"]' ).removeClass('active');
    			/* category.removeClass('active'); */
    		}
    		//내가 클릭한 이 태그에 addClass('active');
    		
    		// ajax(txt = html 태그 넣고  어쩌구.html(txt))로 할것인가 submit(새페이지 불러오고 대신 선택했던 지역탭에 addClass('active'))으로 할것인가 
			iffpSpotLocation.val(key)
    		form.attr("action" , "/findpet/findpetList").submit();
    		
    		$("#category"+key).addClass('active');
	    };
	    /*
	    area = function(key) {
	    	var crArea = document.getElementsByName('crArea');
	    	
	    	for(var i=0; i<crArea.length; i++){
	    		crArea[i].classList.remove("active");
	    	}
	    	$("#category"+key).addClass('active');
	    };
	    */
    </script>
    
</body>

</html>
