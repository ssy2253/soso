<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/group/notice.css">
    
<!-- 메인 시작 -->
<div class="page-main">
	<p>GROUP NOTICE</p>
	<div class="notice-main">
        <table class="notice-table">
            <tr class="notice-table-header">
                <th class="no1">no.</th>
                <th class="no2">title</th>
                <th class="no3">date</th>
                <th class="no4">view</th>
            </tr>
            <c:forEach var="notice" items="${list}">
            <c:if test="${notice.stc_num==stc_num}">
            <tr>
	            <td class="no1">${notice.grp_num}</td>
	            <td class="no2">
	            <a href="/group/groupNoticeDetail.do?grp_num=${notice.grp_num}">${notice.grp_title}</a>
	            </td>
	            <c:if test="${empty notice.grp_mdate}">
	            <td class="no3">${notice.grp_date}</td>
	            </c:if>
	            <td class="no3">${notice.grp_mdate}</td>
	            <td class="no4">${notice.grp_hit}</td>
            </tr>
            </c:if>
            </c:forEach>
        </table>
        <div class="page">${page}</div>
    </div>
    

	<div class="writebutton">
	    <button class="button" id="add-button" onclick="location.href='${pageContext.request.contextPath}/groupNoticeWrite.do?stc_num=1'">write</button>
	</div>
	

</div>
<!-- 메인 끝 -->