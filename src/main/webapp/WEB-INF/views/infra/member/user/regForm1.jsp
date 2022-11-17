<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <title>회원가입</title>
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    	.right{
    		float: right;
    	}
    	
    	.foot{
    		font-size: 60px;
    	}
    	
    	.reg{
    		text-align: center;
   		}
   		
   		.arrow{
   			font-size: 15px;
			margin-bottom: 10px;   			
   		}
   		
   		.wid{
   			width: 120px;
   		}
   		
   		.div1 {
		    display: flex;
		    justify-content: center;
		}
		
		.foot{
			font-size: 50px;
		}
		
		.top{	
			margin-top: 20px;
		}

		.foot2{
			color: #b5b5b5; 
			font-size: 50px;
		} 
		
		#mydiv {
	        height: 300px;
	        overflow: scroll;
	        background-color: #fcfcfc;
	    }
	    
	    #mydiv2 {
	    	background-color: #fcfcfc;
	    }
	    
	    .btn{
	    	padding: 10px 10px;
	    }

		.btnGo {
	    	border: 1px solid #efefef;
	    	background: #f3f0eb;
	    	color: #372d2b;
	    	text-align: center;
	    	width: 60px;
	    	height: 50px;
	    	border-radius: 10px;
	    	font-size: 13px;
	    	font-weight: bold;
	    }
	    
	    .btnGo:hover {
	    	background: #372d2b;
	    	color: #f3f0eb;
	    	cursor: pointer;
	    }
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form method="post" id="mainForm">
	    <div class="totalContent">
		    <div class="content">
		    	<div class="totalContent">
			        <div class="container">
			            <div class="row">
			                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                    <div class="bg-light pinside30">
			                        <div class="row">
			                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			                                <h1>회원가입</h1>
			                                <p>#Daily Pet 회원 가입으로 다양한 서비스를 만나보세요.</p>
			                                <br>
			                                <div class="row div1 reg">
			                               		<div class="col-1 wid"> 	
			                               			<span class="foot"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>약관동의</span>
			                               		</div>
			                               		<div class="col-1 top">
			                               			<i class="fa-solid fa-angle-right"></i>
			                               		</div>
			                               		<div class="col-1 wid">
			                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>정보입력</span>
			                               		</div>
			                               		<div class="col-1 top">
			                               			<i class="fa-solid fa-angle-right"></i>
			                               		</div>
			                               		<div class="col-1 wid">
			                               			<span class="foot2"><i class="fa-solid fa-paw"></i></span>
			                               			<br>
			                               			<span>가입완료</span>
			                               		</div> 
			                               	</div>
			                            </div>
			                        </div>
			                        <br>
			                        <br>
			                        <hr>
			                        <h3>[필수] 약관의 효력 및 개정</h3>
			                        <hr>
			                   		<div id="mydiv">
										제 1 장 총 칙<br>
											제 1 조 (목적)<br>
												이 약관은 #Daily Pet(이하 "사이트"라 합니다)에서 제공하는 인터넷서비스(이하 "서비스"라 합니다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.<br>
											제 2 조 (약관의 효력 및 변경)<br>
												① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.<br>
												② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.<br>
											제 3 조 (용어의 정의)<br>
												이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
												① 회원 : 사이트와 서비스 이용계약을 체결하거나 이용자 아이디(ID)를 부여받은 개인 또는 단체를 말합니다.<br>
												② 신청자 : 회원가입을 신청하는 개인 또는 단체를 말합니다.<br>
												③ 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 사이트가 승인하는 문자와 숫자의 조합을 말합니다.<br>
												④ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.<br>
												⑤ 해지 : 사이트 또는 회원이 서비스 이용계약을 취소하는 것을 말합니다.<br>
										제 2 장 서비스 이용계약<br>
											제 4 조 (이용계약의 성립)<br>
												① 이용약관 하단의 동의 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.<br>
												② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가 승낙함으로써 성립합니다.<br>
											제 5 조 (이용신청)<br>
												① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청 양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다.<br>
												② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을 받을 수 있습니다.<br>
											제 6 조 (이용신청의 승낙)<br>
												① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.<br>
												② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.<br>
													가. 서비스 관련 설비에 여유가 없는 경우<br>
													나. 기술상 지장이 있는 경우<br>
													다. 기타 사이트가 필요하다고 인정되는 경우<br>
												③ 사이트는 신청자가 다음에 해당하는 경우에는 승낙을 거부할 수 있습니다.<br>
													가. 다른 개인(사이트)의 명의를 사용하여 신청한 경우<br>
													나. 이용자 정보를 허위로 기재하여 신청한 경우<br>
													다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우<br>
													라. 기타 사이트 소정의 이용신청요건을 충족하지 못하는 경우<br>
											제 7 조 (이용자정보의 변경)<br>
												회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지 않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.<br>
										제 3 장 계약 당사자의 의무<br>
											제 8 조 (사이트의 의무)<br>
											① 사이트는 회원에게 각 호의 서비스를 제공합니다.<br>
													가. 신규서비스와 도메인 정보에 대한 뉴스레터 발송<br>
													나. 추가 도메인 등록시 개인정보 자동 입력<br>
													다. 도메인 등록, 관리를 위한 각종 부가서비스<br>
												② 사이트는 서비스 제공과 관련하여 취득한 회원의 개인정보를 회원의 동의없이 타인에게 누설, 공개 또는 배포할 수 없으며, 서비스관련 업무 이외의 상업적 목적으로 사용할 수 없습니다. 단, 다음 각 호의 1에 해당하는 경우는 예외입니다.<br>
													가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우<br>
													나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우<br>
													다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우<br>
												③ 사이트는 이 약관에서 정한 바에 따라 지속적, 안정적으로 서비스를 제공할 의무가 있습니다.<br>
											제 9 조 (회원의 의무)<br>
												① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.<br>
													가. 다른 회원의 ID를 부정하게 사용하는 행위<br>
													나. 서비스에서 얻은 정보를 사이트의 사전승낙 없이 회원의 이용 이외의 목적으로 복제하거나 이를 변경, 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위<br>
													다. 사이트의 저작권, 타인의 저작권 등 기타 권리를 침해하는 행위<br>
													라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위<br>
													마. 범죄와 결부된다고 객관적으로 판단되는 행위<br>
													바. 기타 관계법령에 위배되는 행위<br>
												② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수하여야 합니다.<br>
												③ 회원은 내용별로 사이트가 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.<br>
										제 4 장 서비스 제공 및 이용<br>
											제 10 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)<br>
												① 아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은 회원에게 있습니다.<br>
												② 자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 사이트에 그 사실을 통보해야 합니다.<br>
											제 11 조 (서비스 제한 및 정지)<br>
												① 사이트는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신 사업자가 전기통신서비스를 중지하는 등 기타 불가항력적 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.<br>
												② 사이트는 제1항의 규정에 의하여 서비스의 이용을 제한하거나 정지할 때에는 그 사유 및 제한기간 등을 지체없이 회원에게 알려야 합니다.<br>
										제5장 계약사항의 변경, 해지<br>
											제 12 조 (정보의 변경)<br>
												회원이 주소, 비밀번호 등 고객정보를 변경하고자 하는 경우에는 홈페이지의 회원정보 변경 서비스를 이용하여 변경할 수 있습니다.<br>
											제 13 조 (계약사항의 해지)<br>
												회원은 서비스 이용계약을 해지할 수 있으며, 해지할 경우에는 본인이 직접 서비스를 통하거나 전화 또는 온라인 등으로 사이트에 해지신청을 하여야 합니다. 사이트는 해지신청이 접수된 당일부터 해당 회원의 서비스 이용을 제한합니다. 사이트는 회원이 다음 각 항의 1에 해당하여 이용계약을 해지하고자 할 경우에는 해지조치 7일전까지 그 뜻을 이용고객에게 통지하여 소명할 기회를 주어야 합니다.
												① 이용고객이 이용제한 규정을 위반하거나 그 이용제한 기간 내에 제한 사유를 해소하지 않는 경우<br>
												② 정보통신윤리위원회가 이용해지를 요구한 경우<br>
												③ 이용고객이 정당한 사유 없이 의견진술에 응하지 아니한 경우<br>
												④ 타인 명의로 신청을 하였거나 신청서 내용의 허위 기재 또는 허위서류를 첨부하여 이용계약을 체결한 경우<br>
												사이트는 상기 규정에 의하여 해지된 이용고객에 대해서는 별도로 정한 기간동안 가입을 제한할 수 있습니다.<br>
										제6장 손해배상<br>
											제 14 조 (면책조항)<br>
												① 사이트는 회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.<br>
												② 사이트는 회원의 귀책사유나 제3자의 고의로 인하여 서비스에 장애가 발생하거나 회원의 데이터가 훼손된 경우에 책임이 면제됩니다.<br>
												③ 사이트는 회원이 게시 또는 전송한 자료의 내용에 대해서는 책임이 면제됩니다.<br>
												④ 상표권이 있는 도메인의 경우, 이로 인해 발생할 수도 있는 손해나 배상에 대한 책임은 구매한 회원 당사자에게 있으며, 사이트는 이에 대한 일체의 책임을 지지 않습니다.<br>
										제 15 조 (관할법원)<br>
											서비스와 관련하여 사이트와 회원간에 분쟁이 발생할 경우 사이트의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.<br>
									</div>
									 <hr>
									<div class="form-check right">
									 	<input class="form-check-input" type="radio" name="agree">
										<label class="form-check-label" for="flexRadioDefault1">동의합니다.</label>
									</div>
									<br>
									<hr>
									<br>
									<a href="/member/regForm2">
										<button type="button" class="btn btnGo right" id="btn">다음 <i class="fa-solid fa-angle-right"></i></button>
									</a>
									<br>
									<br>
			                    </div>
			                </div>
		            	</div>
		            </div>
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
		$("#btn").on("click", function(){
			if($(':radio[name="agree"]:checked').length < 1){
			    alert('필수 약관에 동의해주세요.'); 
			    return false;
			}
		}); 
	</script>
    
</body>

</html>
