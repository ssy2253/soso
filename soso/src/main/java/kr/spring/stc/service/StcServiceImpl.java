package kr.spring.stc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.spring.stc.dao.StcMapper;
import kr.spring.study.vo.StudyVO;

@Service
@Transactional
public class StcServiceImpl implements StcService{
	@Autowired
	private StcMapper stcMapper;
	
	@Override
	public List<StudyVO> studyList(Map<String, Object> map) {
		return stcMapper.studyList(map);
	}

	@Override
	public void studyCreate(StudyVO study) {
		stcMapper.studyCreate(study);
	}

	@Override
	public int studyCount(Map<String, Object> map) {
		return stcMapper.studyCount(map);
	}

	@Override
	public StudyVO selectStudy(Integer stc_num) {
		return stcMapper.selectStudy(stc_num);
	}

}
