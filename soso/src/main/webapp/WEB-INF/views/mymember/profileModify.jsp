<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 프로필 수정 시작 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mymember/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/member.js"></script>
<div class="mypage-main">
	<ul>
		<li>
			<img src="${pageContext.request.contextPath}/member/photoView.do" width="200" height="200" class="my-photo">
		</li>
		<li>
			<div class="align-center">
				<input type="button" value="수정" id="photo_btn">
			</div>
			<div id="photo_choice" style="display:none;">
				<input type="file" id="upload" accept="image/gif,image/png,image/jpeg">
				<input type="button" value="전송" id="photo_submit">
				<input type="button" value="취소" id="photo_reset">         
			</div>
		</li>
		<li>
			<input type="button" class="menu-btn" value="비밀번호변경" onclick="location.href='${pageContext.request.contextPath}/member/changePassword.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="채팅" onclick="location.href='${pageContext.request.contextPath}/talk/talkList.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="회원탈퇴" onclick="location.href='${pageContext.request.contextPath}/member/delete.do'">
		</li>
	</ul>
</div>
<!-- MyPage 메뉴 끝 --> --%>



