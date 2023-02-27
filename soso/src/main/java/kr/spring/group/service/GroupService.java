package kr.spring.group.service;

import java.util.List;
import java.util.Map;

import kr.spring.group.vo.GroupCalendarVO;
import kr.spring.group.vo.GroupNoticeVO;
import kr.spring.member.vo.MemberVO;


public interface GroupService {
	
	/*------------메인페이지-----------*/
	//그룹 규칙 조회
	public List<GroupNoticeVO> selectRule(int stc_num);
	//오늘 일정 조회
	public List<GroupCalendarVO> selectTodayList(int stc_num);
	//그룹 멤버 조회
	public int selectCountMember(int stc_num);
	//그룹 멤버 조회
	public List<MemberVO> selectMemberList(int stc_num);
	
	/*------------공지사항 페이지-----------*/
	//공지사항 글 리스트 조회
	public List<GroupNoticeVO> selectNoticeList(Map<String,Object> map);
	//공지사항 글 갯수 세기
	public int selectCountNotice(Map<String,Object> map);
	//공지사항 조회수 증가
	public void updateNoticeHit(int grp_num);
	//공지사항 글 조회(디테일)
	public GroupNoticeVO selectNoticeDetail(int grp_num);
	
	/*------------캘린더 페이지-----------*/
}
