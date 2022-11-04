<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>반려동물 리스트</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    
    <style type="text/css">
    
    .category {
    	text-align: right;
    	height: 500px;
    	background: white;
    	border: 1px solid gray;
    }
    .searchBox {
    	max-width: 100%;
    	background: gray;
    	height: 200px;
    	padding: 37px 20px;
    }
    .searchBtn, .resetBtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 50px;
    	height: 50px;
    	border-radius: 10px;
    	font-size: 13pt;
    	font-weight: bold;
    }
    .searchBtn:hover, .resetBtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .post-block {
    	margin-top: 30px;
    }
    
    .in:hover {
    	cursor: pointer;
    	background-color: #372d2b;
    }
    
    th, td {
    	text-align: center;
    }
    
    </style>
    
</head>

<body>
	<!-- 헤더 s -->
    <div class="header navbar-fixed-top">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		            <a href="index.html"><img src="/resources/images/logo.png" alt="Interior Design Website Templates Free Download"></a>
		        </div>
		        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
		            <div class="navigation">
		                <div id="navigation">
		                    <ul>
		                        <li class="active"><a href="index.html" title="Home">홈</a></li>
		                        <li class="has-sub"><a href="service-list.html" title="Service List">유기동물 찾기</a>
		                            <ul>
		                                <li><a href="service-list.html" title="Service List">유기동물 찾기</a></li>
		                                <li><a href="service-detail.html" title="Service Detail">전국 유기동물</a></li>
		                            </ul>
		                        </li>
		                        <li class="has-sub"><a href="../searchingPlace.html" title="Portfolio">내 주변 편의시설</a>
		                            <ul>
		                                <li><a href="../searchingPlace.html" title="Projects">편의시설 찾기</a></li>
		                                <li><a href="../reservationForm.html" title="Projects Detail">내 예약 정보</a></li>
		                            </ul>
		                        </li>
	                      <!--  <li class="has-sub"><a href="blog-default.html" title="Blog ">News</a>
					              <ul>
					                  <li><a href="blog-default.html" title="Blog">반려동물 일기</a></li>
					                  <li><a href="blog-single.html" title="Blog Single ">Blog Single</a></li>
					              </ul>
					          </li> -->
					          	<li class="has-sub"><a href="../diaryList.html" title="Portfolio">내 주변 편의시설</a>
	<!-- 						메뉴구현x 일단 링크만 생성						
								<li><a href="../diaryMypage.html" title="Contact Us">육아수첩</a> </li>
								<li><a href="../diaryDetail.html" title="Projects">일기 상세</a></li>
								<li><a href="../diaryForm.html" title="Projects">일기 쓰기</a></li>
	-->							
								<!-- <li><a href="testimonial.html" title="Testimonial">피망</a> </li> -->
	                            <li><a href="error.html" title="Error">로그인</a> </li>
	                            <li><a href="error.html" title="Error">회원가입</a> </li>
	                        </ul>
	                    </div> 
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
    <!-- 헤더 e -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                       <!--  <h1 class="page-title">latest news</h1>
                        <p>Praesent sit amet dapibus dui, non ullamcorper nisecenas ac
                            <br> nulla non urna ullamcorper iaculis nec eu leo. </p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row">
            	 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="widget widget-categories category" >
                        <!-- widget categories -->
                        <!-- widget start -->
                        <h3 class="widget-title"> 대시보드 </h3>
                        <ul class="listnone">
                            <li><a href="https://easetemplate.com/downloads/interior-exterior/free-website-template/">회원 리스트 </a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-websites-templates-free-download/">반려동물 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free-download/">유기동물 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free/">코드 리스트</a></li>
                            <li><a href="https://easetemplate.com/downloads/interior-exterior-website-template-free/">코드그룹 리스트</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="row">
                    	<form method="post" name="codeform">
					    <input type="hidden" name="ifcdSeq">
						<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
                    	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="row">
                            	<div class="col searchBox">
                            		<div class="row">
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control" name="shDelNy">
                            					<option value="" <c:if test="${empty vo.shDelNy }">selected</c:if>>삭제여부</option>
												<option value="0" <c:if test="${vo.shDelNy eq 0 }">selected</c:if>>N</option>
												<option value="1" <c:if test="${vo.shDelNy eq 1 }">selected</c:if>>Y</option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control" name="shOptionDate">
                            					<option value="">날짜선택</option>
												<option value="1">가입일</option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="text" id="shstartDate" name="shstartDate" class="form-control shDate" value="${vo.shstartDate}" placeholder="시작일" autocomplete="off">
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="text" id="shendDate" name="shendDate" class="form-control shDate" value="${vo.shendDate}" placeholder="종료일" autocomplete="off">
                            			</div>
                            		</div>
                            		<div class="row">
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<select class="form-control" name="shUseNy">
                            					<option value="" <c:if test="${empty vo.shUseNy }">selected</c:if>>사용여부</option>
												<option value="0" <c:if test="${vo.shUseNy eq 0 }">selected</c:if>>N</option>
												<option value="1" <c:if test="${vo.shUseNy eq 1 }">selected</c:if>>Y</option>
                            				</select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                           					<select class="form-control" name="shOption">
												<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>선택</option>
												<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드이름</option>
												<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름</option>
												<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드이름(영문)</option>
											 </select>
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            				<input type="text" class="form-control" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어 입력">
                            			</div>
                            			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="display: flex; justify-content: space-between; width: 150px;">
                            				<button type="button" class="searchBtn" id="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>
                            				<button type="button" class="resetBtn" id="resetBtn"><i class="fa-solid fa-rotate-left"></i></button>
                            			</div>
                            		</div>
                            	</div>
                            </div>
                        </div>
                        </form>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="post-block">
                               <div class="row">
	                               <div class="col"> 
		                           		<h1>코드 리스트</h1>
	                               </div>
							   </div>
							   <div class="row" style="display: flex; justify-content: space-between; height: 30px;">
	                               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"> 
		                           		 <p class="meta">total: </p><c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }"/>
	                               </div>
	                               <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8"> 
		                           		&nbsp;
	                               </div>
	                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"> 
	                                	<select class="form-control">
	                                		<option>10</option>
	                                		<option>20</option>
	                                		<option>30</option>
	                                		<option>40</option>
	                                	</select>
	                               </div>
							   </div>
                            </div>
                            <hr>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="row">
								<div class="col">
									<table class="table table-striped">
										<tr>
											<th>
												<input type="checkbox">
											</th>
											<th>#</th>
											<th>Seq</th>
											<th>코드그룹이름</th>
											<th>코드이름</th>
											<th>가입일</th>
											<th>사용유무</th>
											<th>삭제유무</th>
										</tr>
										<tr>
											<c:choose>
												<c:when test="${fn:length(list) eq 0 }">
													<td>데이터가 존재하지 않습니다</td>
												</c:when>
												<c:otherwise>	
													<c:forEach items="${list}" var="list" varStatus="status">
														<tr onclick="goForm(${list.ifcdSeq })" class="in">
															<td>
																<input type="checkbox">
															</td>
															<td>#</td>
															<td>
																<c:out value="${list.ifcdSeq }"/>
															</td>
															<td>
																<c:out value="${list.ifcgName }"/>
															</td>
															<td>
																<c:out value="${list.ifcdName }"/>
															</td>
															<td>
																<c:out value="${list.ifcdModDate }"/>
															</td>
															<td id="UseNY">
																<c:choose>
																	<c:when test="${list.ifcdUseNy eq 0 }">N</c:when>
																	<c:otherwise>Y</c:otherwise>
																</c:choose>
															</td>
															<td id="DelNY">
																<c:choose>
																	<c:when test="${list.ifcdDelNy eq 0 }">N</c:when>
																	<c:otherwise>Y</c:otherwise>
																</c:choose>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tr>
									</table>
								</div>
							</div>
                        </div>
                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        	<div class="row" style="margin-top: 20px;">
                        		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
									<button type="button" class="btn btn-warning"><i class="fa-solid fa-trash-can"></i></button>
									<button type="button" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
                        		</div>
                        		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="display: flex; justify-content: flex-end;">
									<button type="button" class="btn btn-success"><i class="fa-regular fa-file-excel"></i></button>
									<a href="/code/codeForm"><button type="button" class="btn btn-primary" id="regbtn" style="margin-left: 5px;"><i class="fa-solid fa-plus"></i></button></a>
                        		</div>
                        	</div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="st-pagination">
                                <ul class="pagination">
                                    <li><a href="#">Previous</a></li>
                                    <li><a href="#" class="active">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <!-- footer-->
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-widget">
                        <h3 class="widget-title">About us</h3>
                        <p>Phasellus hendrerit mauris vitae odio suscip pimus donec consequat cursus viverra varius natoque penatibus magnis dis parturient.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-widget">
                        <!-- social block -->
                        <h3 class="widget-title">Our Address</h3>
                        <p>1309 Roosevelt Wilson Lane
                            <br> Colton, CA 92324</p>
                    </div>
                    <!-- /.social block -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="footer-widget">
                        <!-- newsletter block -->
                        <h3 class="widget-title">e-mail Us</h3>
                        <p>info@yourwebsitedomain.com</p>
                    </div>
                    <!-- newsletter block -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="footer-widget">
                        <!-- newsletter block -->
                        <h3 class="widget-title">Call us</h3>
                        <p>180-874-5234</p>
                        <p>180-752-3957</p>
                    </div>
                    <!-- newsletter block -->
                </div>
            </div>
        </div>
    </div>
    <!-- /.footer-->
    <div class="tiny-footer">
        <!-- tiny footer block -->
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                    <div class="copyright-content">
                     Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="footer-social">
                        <ul class="listnone">
                            <li> <a href="#"><i class="fa fa-facebook-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-twitter-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-google-plus-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-youtube-square"></i></a> </li>
                            <li> <a href="#"><i class="fa fa-pinterest-square"></i></a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    
		var form = $("form[name=codeform]");
		var ifcdSeq = $("input:hidden[name=ifcdSeq]");
		
		var goUrlList = "/code/codeList";
		var goUrlForm = "/code/codeForm";
		
		$("#searchBtn").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#resetBtn").on("click", function(){
			$(location).attr("href", goUrlList);
		});
		
		goForm = function(key) {
			ifcdSeq.attr("value", key);
			form.attr("action", goUrlForm).submit();
		}
		
		/* goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		} */
/* 		
		$("#regbtn").on("click", function(){
			form.attr("action", goUrlForm).submit();
		});
 */		
		$(document).ready(function() {
			$("input.shDate").datepicker();
		});
		
		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
    
    </script>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/menumaker.js"></script>
    <script src="/resources/js/navigation.js" type="text/javascript"></script>
</body>

</html>
