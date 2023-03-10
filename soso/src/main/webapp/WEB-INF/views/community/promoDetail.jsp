<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/community/community.css">
<script src="${pageContext.request.contextPath}/js/videoAdapter.js"></script>
<script src="${pageContext.request.contextPath}/js/community.promoFav.js"></script>
<script src="${pageContext.request.contextPath}/js/community.promoReply.js"></script>
<!-- 홍보 글상세 시작 -->
<div class="community-page-main-detail">
	<c:if test="${promo.promo_fixed==1}">
	<div style="color:red" class="detail-notice">공지사항</div>
	</c:if>
	<ul class="community-detail-member">
		<li>
			<c:if test="${!empty promo.mem_photo_name}">
			<img src="imagePromoView.do?promo_num=${promo.promo_num}&promo_type=1" width="35" height="35" class="my-photo">
			</c:if>
			<c:if test="${empty promo.mem_photo_name}">
			<img src="${pageContext.request.contextPath}/images/face.png" width="35" height="35" class="my-photo">
			</c:if>
		</li>
		<li>
			<span style="color:#ff9889"><b>
			<c:if test="${promo.promo_status==1}">모집중</c:if>
			</b></span>
			<span style="color:gray"><b>
			<c:if test="${promo.promo_status==2}">모집완료</c:if>
			</b></span>
			
			<br>
			<c:if test="${empty promo.mem_nick}">${promo.mem_id}</c:if>
			<c:if test="${!empty promo.mem_nick}">${promo.mem_nick} (${promo.mem_id}) </c:if>
			&nbsp;·&nbsp;
			<c:if test="${!empty promo.promo_modifydate}">(수정)${promo.promo_modifydate}</c:if>
			<c:if test="${empty promo.promo_modifydate}">${promo.promo_regdate}</c:if>
			&nbsp;·&nbsp;
			${promo.promo_hit} views
		</li>
	</ul>
	
	<div class="clear"></div>
	
	<div class="community-page-main-detail-content">
	<h2>${promo.promo_title}</h2>
	
	<c:if test="${promo.promo_fixed==2}">
	<div class="study-info">
		(스터디 소개 페이지 : 
			<div id="my_modal">
				<a class="modal_close_btn" style="color:#ff9889; cursor:pointer; font-weight:700; font-size:14px; height:25px; padding:3px 4px 0 0; float:right;">닫기 &nbsp; ✖</a>
			    <iframe src="${pageContext.request.contextPath}/study/studyView.do?stc_num=${promo.studyNum}" style="width:980px; height:750px; border:none; border-top:1px solid #CCC;" id="faq_iframe">대체 내용</iframe>  
			</div>
			<button id="faqBot" class="promo-chat">클릭</button>
			<script type="text/javascript">
				// div 숨기기
				document.getElementById("my_modal").style.display = "none";
				
				function modal(id) {
				    var zIndex = 9999;
				    var modal = document.getElementById(id);
				
				    // 모달 div 뒤에 흰 레이어
				    var bg = document.createElement('div');
				    bg.setStyle({
				        position: 'fixed',
				        zIndex: zIndex,
				        left: '0px',
				        top: '0px',
				        width: '100%',
				        height: '100%',
				        overflow: 'auto',
				        backgroundColor: 'rgba(0,0,0,0.7)' // 레이어 색깔
				    });
				    document.body.append(bg);
				
				    // 닫기 버튼 처리, 검정 레이어와 모달 div 지우기
				    modal.querySelector('.modal_close_btn').addEventListener('click', function() {
				        bg.remove();
				        modal.style.display = 'none';
				    });
				
				    modal.setStyle({
				        position: 'fixed',
				        display: 'block',
				        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
				
				        // 검정 레이어 보다 한칸 위에 보이기
				        zIndex: zIndex + 1,
				
				        // div center 정렬
				        top: '50%',
				        left: '50%',
				        transform: 'translate(-50%, -50%)',
				        msTransform: 'translate(-50%, -50%)',
				        webkitTransform: 'translate(-50%, -50%)',
				        backgroundColor: 'white'
				    });
				    
					// 외부영역 클릭시 팝업 닫기
					$(document).mouseup(function(e){
						if($("#my_modal").has(e.target).length === 0){
							$("#my_modal").hide();
							bg.remove();
						}
					});
					
					// ESC 키 누를시 팝업 닫기
					$(document).keydown(function(e){
						//keyCode 구 브라우저, which 현재 브라우저
					    var code = e.keyCode || e.which;
					 
					    if (code == 27) { // 27은 ESC 키번호
					        $('#my_modal').hide();
					        bg.remove();
					    }
					});
				}
				
				// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
				Element.prototype.setStyle = function(styles) {
				    for (var k in styles) this.style[k] = styles[k];
				    return this;
				};
				
				document.getElementById('faqBot').addEventListener('click', function() {
				    // 모달창 띄우기
				    modal('my_modal');
				});
			</script> 시 확인 가능
		)
	</div>
	</c:if>
	
	<div class="hr">
		<hr size="1" width="100%">
	</div>
	
	<p>
		${promo.promo_content}
	</p>
		
	<c:if test="${fn:endsWith(promo.promo_filename,'.jpg') || fn:endsWith(promo.promo_filename,'.JPG') ||
				  fn:endsWith(promo.promo_filename,'.jpeg') || fn:endsWith(promo.promo_filename,'.JPEG') ||
				  fn:endsWith(promo.promo_filename,'.gif') || fn:endsWith(promo.promo_filename,'.GIF') ||
				  fn:endsWith(promo.promo_filename,'.jfif') || fn:endsWith(promo.promo_filename,'.JFIF') ||
				  fn:endsWith(promo.promo_filename,'.png') || fn:endsWith(promo.promo_filename,'.PNG')}"> 
	<div class="align-center">
		<img src="imagePromoView.do?promo_num=${promo.promo_num}&promo_type=2" class="detail-img">
	</div>
	</c:if>
	
	<div class="detail-filename">
	<c:if test="${!empty promo.promo_filename}">
	첨부파일 : <a href="file.do?promo_num=${promo.promo_num}">${promo.promo_filename}</a>
	</c:if>
	</div>
	
	<div>
		<hr size="1" width="100%">
	</div>
	
	<!-- 좋아요 영역 시작 -->
	<div class="detail-bottom-left">
		<img id="p_output_fav" data-num="${promo.promo_num}" src="${pageContext.request.contextPath}/images/like01.png" width="15">
		<span id="p_output_fcount"></span>
	</div>
	<!-- 좋아요 영역 끝 -->
	
	<div class="detail-bottom-right align-right">
		<c:if test="${!empty user && user.mem_num==promo.mem_num}">
		<input type="button" value="수정" onclick="location.href='promoUpdate.do?promo_num=${promo.promo_num}'" class="detail-update-btn">
		<input type="button" value="삭제" class="detail-delete-btn" id="delete_btn">
		<script type="text/javascript">
			let delete_btn = document.getElementById('delete_btn');
			delete_btn.onclick=function(){
				let choice = confirm('삭제하시겠습니까?');
				if(choice){
					location.replace('promoDelete.do?promo_num=${promo.promo_num}');
				}
			}
		</script>
		</c:if>
		<input type="button" value="목록" onclick="location.href='promoList.do'" class="detail-list-btn">
	</div>
	
	<div class="hr clear">
		<hr size="1" width="100%">
	</div>
	
	<!-- 댓글 UI 시작 -->
	<div id="p_reply_div">
		<span class="pre-title"><span style="color:#969CE4"><b>C</b></span>omments</span>
		<div class="reply-div">
		<form id="pre_form" action="listPromoReply.do">
			<input type="hidden" name="promo_num" value="${promo.promo_num}" id="promo_num">
			<textarea rows="3" cols="50" name="pre_content" id="pre_content" class="rep-content" placeholder="댓글을 작성해 주세요."
			<c:if test="${empty user}">disabled="disabled"</c:if>
			><c:if test="${empty user}">로그인해야 작성할 수 있습니다.</c:if></textarea>
			
			<c:if test="${!empty user}">
			<div id="pre_second">
				<input type="submit" value="댓글 등록" class="reply-insert-btn">
			</div>
			<div id="pre_first">
				<span class="letter-count" style="color:#495057">0/500</span>
			</div>
			</c:if>
		</form>
		</div>
	</div>
	<!-- 댓글 목록 출력 -->
	<div id="p_output"></div>
	<div class="paging-button" style="display:none;">
		<input type="button" value="댓글 더보기">
	</div>
	<div id="p_loading" style="display:none;">
		<img src="${pageContext.request.contextPath}/images/loading.gif" width="50" height="50">
	</div>
	<!-- 댓글 목록 끝 -->
	<!-- 댓글 UI 끝 -->
	</div>
</div>
<!-- 홍보 글상세 끝 -->