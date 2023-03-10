<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 중앙 컨텐츠 시작 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mymember/mypage.css">
<div class="mypage-main">
	<h2 id="0">[&nbsp;&nbsp;&nbsp;&nbsp;${member.mem_name}님의 마이페이지&nbsp;&nbsp;&nbsp;&nbsp;]</h2>
	<div class="mypage-left">
		<h3>내 프로필</h3>
		<div class="mypage-box">
			<ul class="mypage-ul-l">
				<li>
					<img src="${pageContext.request.contextPath}/mymember/photoView.do" width="90" height="90" class="my-photo">
				</li>
				<li id="click" onclick="location.href='update.do'"><b>${member.mem_name}</b>님&nbsp;></li>
				<li><input type="button" value="로그아웃" onclick="location.href='${pageContext.request.contextPath}/member/logout.do'"></li>
			</ul>
			<ul class="mypage-ul-r">
				<li>나의 학구열 🔥</li>
				<li id="score"><b>${member.mem_score}점</b></li>
			</ul>
		</div>
	</div>
	<div class="mypage-right">
		<h3>내 일정</h3>
			<div class="mypage-box2">
				<ul class="mypage-ul">
				<%-- <c:if test="${!empty member.cal_date}">
					<li>${member.cal_date}</li>
					<li>${member.cal_content}</li>
				</c:if>
				<c:if test="${empty member.cal_date}">
					<li style="list-style:none;">등록된 일정이 없습니다.</li>
				</c:if> --%>
					<li><b id="b">2023.03.11</b> 정기모임 (중앙동 투썸플레이스 2층)</li>
					<li><b id="b">2023.03.18</b> 정기모임 (3시 홍대입구역 스타벅스 2층)</li>
					<li><b id="b">2023.03.25</b> 정기모임 쉬는 날</li>
				</ul>
			</div>
	</div>
	<div class="mypage-bottom">
		<h3>내 스터디 그룹</h3><hr class="hr">
				<ul class="mypage-ul-b">
					<li>
						<button type="button" value="내가 가입한 스터디 그룹" onclick="location.href='${pageContext.request.contextPath}/mymember/myStudy.do'">
							<img src="${pageContext.request.contextPath}/images/zero/check.png" width="24" height="24"><b>&nbsp;내가 가입한 스터디 그룹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></b>
						</button>
					</li>
					<li>
						<button type="button" value="내가 좋아요한 스터디 그룹" onclick="location.href='${pageContext.request.contextPath}/mymember/myStudyLike.do'">
							<img src="${pageContext.request.contextPath}/images/zero/heart.png" width="24" height="24"><b>&nbsp;내가 좋아요한 스터디 그룹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></b>
						</button>
					</li>
					<li>
						<button type="button" value="내가 신청한 스터디 그룹" onclick="location.href='${pageContext.request.contextPath}/mymember/myStudySign.do'">
							<img src="${pageContext.request.contextPath}/images/zero/pencil.png" width="23" height="23"><b>&nbsp;내가 신청한 스터디 그룹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></b>
						</button>
					</li>
					<li>
						<button type="button" value="내가 만든 스터디 그룹" onclick="location.href='${pageContext.request.contextPath}/mymember/myStudyMade.do'">
							<img src="${pageContext.request.contextPath}/images/zero/setting.png" width="24" height="24"><b>&nbsp;내가 만든 스터디 그룹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></b>
						</button>
					</li>
				</ul>
	</div>
</div>
<%-- <div class="mypage-main02">
	<h3>내 프로필 <input type="button" value="회원정보수정" onclick="location.href='update.do'"></h3>
		<div class="mypage-box">
			<ul>
				<li>이름 : ${member.mem_name}</li>
				<li>별명 : ${member.mem_nick}</li>
				<li>전화번호 : ${member.mem_phone}</li>
				<li>이메일 : ${member.mem_email}</li>
				<li>우편번호 : ${member.mem_zipcode}</li>
				<li>주소 : ${member.mem_address1} ${member.mem_address2}</li>
				<li>가입날짜 : ${member.mem_reg}</li>
				<c:if test="${!empty member.mem_modify}">
				<li>정보 수정일 : ${member.mem_modify}</li>
				</c:if>
			</ul>
		</div>
</div> --%>
<!-- 중앙 컨텐츠 끝 -->



