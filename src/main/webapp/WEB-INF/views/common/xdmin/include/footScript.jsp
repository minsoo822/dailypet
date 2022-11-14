<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- 카카도 지도 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- jQuery -->
<script src="/resources/js/jquery.min.js"></script>
<!-- etc js -->
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/menumaker.js"></script>
<script src="/resources/js/navigation.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<script type="text/javascript">
   
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/login";
				} else {
					alert("다시 시도해주세요.")
				}
			}
		});
	});
	
	goDiaryForm = function(key) {
    	seq.attr("value", key);
    	form.attr("action", "/diary/diaryForm").submit();
    }
	
	goMypage = function(key) {
		seq.attr("value", key);
		form.attr("action", "/member/myPage").submit();
	} 
	
</script>