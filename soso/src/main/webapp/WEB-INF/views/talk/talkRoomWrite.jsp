<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/talk/talk.css">
<!-- 채팅방 생성 시작 -->
<div class="page-main-talk">    
<div class="talk">
<div class="talklist-head"><div class="titletitle">채팅방 만들기</div></div>
   <div class="talk-make-body">
	<form action="talkRoomWrite.do" method="post" id="talk_form">
		<input type="hidden" name="members" id="user"
		 data-id="${user.mem_id}" value="${user.mem_num}">
		<div class="make-nameNmem">
			<div class="inputform-a">
				<span class="chatname-create">채팅방 이름</span><input type="text" name="talkroom_name" id="talkroom_name" class="inputform" autocomplete="off" placeholder="방 이름">
			</div>
			<div class="autocreate">	
				<input type="checkbox" id="name_checked" class="chatauto"><span class="auto-word">자동생성</span>	
			</div>
			<div class="inputform-a-1">
				<span class="chatname-create-1">채팅방 멤버</span><div id="talk_member"></div>
				<div class="bothclear"></div>
			</div>				
			<div class="inputform-b">
				<span class="membersearch-create">멤버 검색</span><input type="text" id="member_search" class="inputform" autocomplete="off" placeholder="멤버 검색">			   
			</div>
			<div id="search_area"></div>
			<!-- <div class="member-word">Member</div>
			<div>
				<div id="talk_member"></div>
			</div>	 -->
		</div>
	
	<div class="make-btn-box">
			<input type="submit" value="생성하기" class="bottom-btn-2">
 	</div> 
 	</form>
	</div>
</div>
</div><!-- end of page-main-talk -->
<!-- 채팅방 생성 끝 --> 




