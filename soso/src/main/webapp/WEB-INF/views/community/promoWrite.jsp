<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/community/community.css">
<script type="text/javascript">
	$(function(){
		$('#promoWrite_form').submit(function(){
			if($('#promo_title').val().trim()==''){
				alert('제목을 입력하지 않았습니다.');
				$('#promo_title').val('').focus();
				return false;
			}
			if($('#promo_content').val().trim()==''){
				alert('내용을 입력하지 않았습니다.');
				$('#promo_content').val('').focus();
				return false;
			}
		});
	});
</script>
<style> /* 밑으로 드랍다운 했을 때, option 텍스트가 안 보이게 설정 */
	select option[value=""][disabled]{
	display:none;
	}
</style>
<!-- 글작성 영역 시작 -->
<div class="community-page-main-write">

	<span class="full-insert-title">
	<a href='promoList.do' style="color:white"><b>
		홍보게시판
		<%-- <c:if test="${!empty user && user.mem_auth==9}">&nbsp;공지작성</c:if>
		<c:if test="${!empty user && user.mem_auth<9}">&nbsp;글작성</c:if> --%>
	</b></a>
	</span>
	
	<!-- 작성 폼 시작 -->
	<div class="full-insert">
	<form:form action="promoWrite.do" id="promoWrite_form" modelAttribute="promoVO" enctype="multipart/form-data">
		<input type="hidden" name="promo_name" value="홍보">
		<ul>
			<li>
				<label>닉네임 (아이디)</label>
				<c:if test="${!empty user.mem_nick}">
				</c:if>
				<input type="text" value="${user.mem_nick} ( ${user.mem_id} )" class="insert-id" readonly/>
			</li>
			<li>
				<label>게시판 타입</label>
				<select title="" onchange="if(this.value) location.href=(this.value);">
					<option value="freeWrite.do">자유게시판</option>
					<option value="promoWrite.do" selected>홍보게시판</option>
					<option value="reviewWrite.do">후기게시판</option>
				</select>
			</li>
			<c:if test="${!empty user && user.mem_auth<9}">
			<li>
				<label>스터디명</label>
				<select id="studyNum" class="studyNum" name="studyNum" onchange="changePormoSelect()" required>
					<option value="" disabled selected>참여 스터디</option>
						<c:forEach var="study" items="${studyList}">
						<option value="${study.stc_num}">
							${study.stc_title}
						</option>
						<%-- <option value="${study.stc_num}">
							${study.stc_num} &nbsp;｜&nbsp; ${study.stc_title}
						</option> --%>
						</c:forEach>
				</select>
				<span style="color:gray">&nbsp;첨여 스터디가 모집중이 아니라면 홍보글을 작성할 수 없습니다.</span><br>
			</li>
			</c:if>
			<li>
				<label for="promo_title">제목</label>
				<form:input path="promo_title" class="insert-title"/>
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<form:errors path="promo_title" cssClass="error-color"/>
			</li>
			<li>
				<c:if test="${!empty user && user.mem_auth==9}">
				<form:hidden path="promo_status" value="0"/>
				</c:if>
				<c:if test="${!empty user && user.mem_auth<9}">
				<label class="promoStatus">모집 여부</label>
					<input id="status1" name="promo_status" checked="checked" type="radio" value="1"/><span>모집중</span>
					<input id="status2" name="promo_status" type="radio" value="2" onclick="return(false);"/><span>모집완료</span>
				
				<%-- <form:radiobutton path="promo_status" value="1" id="status1" checked="checked"/>모집중
				<form:radiobutton path="promo_status" value="2" id="status2" onclick="return(false);"/>모집완료 --%>
				</c:if>
			</li>
			<li>
				<label for="promo_content">본문</label>
				<form:textarea path="promo_content" class="insert-content"/>
				<form:errors path="promo_content" cssClass="error-color"/>
			</li>
			<li>
				<label for="upload">업로드</label>
				<input type="file" name="upload" id="upload">
			</li>
			
			<c:if test="${!empty user && user.mem_auth==9}">
			<li style="display:none;">
					<label for="promo_fixed">상단 고정</label>
					<input type="number" name="promo_fixed" id="promo_fixed1" value="1" readonly/>
			</li>
			</c:if>
			<c:if test="${!empty user && user.mem_auth<9}">
			<li style="display:none;">
					<label for="promo_fixed">일반 게시글</label>
					<input type="number" name="promo_fixed" id="promo_fixed2" value="2" readonly/>
			</li>
			</c:if>
			
		</ul>
		<div class="align-left">
			<input type="submit" value="등록" class="insert-btn">
			<input type="button" value="취소" onclick="location.href='promoList.do'" class="delete-btn">
		</div>
	</form:form>
	<!-- 작성 폼 끝 -->
	</div>
</div>
<!-- 글작성 영역 끝 -->