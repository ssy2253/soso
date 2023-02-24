<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/community/community.css">


<div class="community-page-main">	
	<!-- 목록 영역 시작 -->
	<c:if test="${count==0}">
	<div class="community-result-display">작성된 게시글이 없습니다.</div>
	</c:if>
	
	<c:if test="${count>0}">
	<div class="full-list">
		<table>
			<tr class="title">
				<th>게시판타입</th>
				<th width="400">제목[댓글수]</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>댓글수</th>
				<th>좋아요수</th>
			</tr>
			<c:forEach var="free" items="${fullList}">
			<tr class="item">
				<td>
					<c:if test="${free.tblName=='자유'}">
					<a href="freeList.do">${free.tblName}</a>
					</c:if>
					<c:if test="${free.tblName=='홍보'}">
					<a href="promoList.do">${free.tblName}</a>
					</c:if>
					<c:if test="${free.tblName=='후기'}">
					<a href="reviewList.do">${free.tblName}</a>
					</c:if>
				</td>
				<td style="text-align:left;">
					<c:if test="${free.tblName=='자유'}">
					<a href="freeDetail.do?free_num=${free.free_num}">${free.free_title}</a>&nbsp;[ ${free.f_replyCnt} ]
					</c:if>
					<c:if test="${free.tblName=='홍보'}">
					<a href="promoDetail.do?promo_num=${free.free_num}">${free.free_title}</a>&nbsp;[ ${free.f_replyCnt} ]
					</c:if>
					<c:if test="${free.tblName=='후기'}">
					<a href="reviewDetail.do?review_num=${free.free_num}">${free.free_title}</a>&nbsp;[ ${free.f_replyCnt} ]
					</c:if>
				</td>
				<td>
					<c:if test="${empty free.mem_nick}">${free.mem_id}</c:if>
					<c:if test="${!empty free.mem_nick}">${free.mem_nick}</c:if>
				</td>
				<td>${free.free_regdate}</td>
				<td>${free.free_hit}</td>
				<td>
					<c:if test="${free.f_favCnt>0}">
						<span>(♥${free.f_favCnt})</span>
					</c:if>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:if>
	<!-- 목록 영역 끝 -->
	
	<!-- 페이징 영역 시작 -->
	<div class="community-paging">${page}</div>
	<!-- 페이징 영역 끝 -->
</div>