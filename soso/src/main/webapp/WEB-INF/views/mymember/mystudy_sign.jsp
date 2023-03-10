<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 중앙 컨텐츠 시작 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mymember/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/member.js"></script>
<div class="mypage-main">
	<h2 id="0">[&nbsp;&nbsp;&nbsp;&nbsp;내가 신청한 스터디 그룹&nbsp;&nbsp;&nbsp;&nbsp;]</h2>
	<div class="mypage-box-study">
		<c:if test="${!empty signStudyList}">
			<h3>신청한 스터디 그룹</h3><hr class="hr">
			<c:forEach var="studysign" items="${signStudyList}">
				<div class="study_div">
					<ul class="mypage-study-ul-l">
						<li>
							<c:if test = "${studysign.stc_uploadfile eq null}">
								<img src="${pageContext.request.contextPath}/images/zero/white.png" width="90" height="90">
							</c:if>
							<c:if test = "${studysign.stc_uploadfile ne null}">
								<img src="${pageContext.request.contextPath}/study/imageView.do?stc_num=${studysign.stc_num}&stc_type=2" width="90" height="90">
							</c:if>
						</li>
						</ul>
					<ul class="mypage-study-ul-r">
						<li id="click"><b>${studysign.stc_title}</b>
						<c:if test="${studysign.signup_status eq '0'}">
							<label id="status">
								<span>신청완료</span>
							</label>
						</c:if>
						<c:if test="${studysign.signup_status eq '1'}">
							<label id="status2">
								<span>신청수락</span>
							</label>
						</c:if>
						<c:if test="${studysign.signup_status eq '2'}">
							<label id="status3">
								<span>신청거절</span>
							</label>
						</c:if>
						<input type="button" id="바로가기" value="모집글 바로가기" onclick="location.href='${pageContext.request.contextPath}/study/studyView.do?stc_num=${studysign.stc_num}'"></li>
						<li>${studysign.stc_content}</li>
					</ul>
				</div><hr class="hr2">
			</c:forEach>
		</c:if>
		<c:if test="${empty signStudyList}">
			<div class="none">
				<p>신청한 스터디 그룹이 없습니다.</p>
				<input type="button" value="마이페이지로" onclick="location.href='${pageContext.request.contextPath}/mymember/myPage.do'">
			</div>
		</c:if>
	</div>
</div>