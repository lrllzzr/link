package kr.co.link.service;

import java.util.List;

import java.util.Map;

import kr.co.link.vo.JisikinAnswer;
import kr.co.link.vo.Jisikin;

public interface JisikinService {

	public int getJisikinSeq();
	public void addJisikin(Jisikin jisikin);
	// 오늘의 질문과 답변
	public int countTodayJisikin();
	public int countTodayAnswer();
	// 누적답변수
	public int countAnswer();
	public List<Jisikin> getJisikinByCategory(int categoryNo);
	public List<Jisikin> getAllJisikin();
	public Jisikin getJisikinByNo(int jisikinNo);
	
	//카테소리별 키워드 검색
	public List<Jisikin> searchJisikinsByCategory(Map<String, Object> map);
	
	// 추천, 조회
	public void updateJisikinRecommendByNo(int jisikin);
	public void updateJisikinViewCntByNo(int jisikin);
	
	// 조회순 질문리스트
	public List<Jisikin> getJisikinByView();
	
	// 성지글
	public List<Jisikin> getJisikinByrecommend();
	
	// 나의 질문, 답변
	public List<Jisikin> getMyJisikin(String userId);
	public List<JisikinAnswer> getMyAnswer(String userId);
	
	public Map<String, Object> getMyProfile(String userId);
	
	// 메인화면
	// 오늘의 질문
	public List<Jisikin> todayJisikin3();
	
	// 오늘 성별 답변수
	public Map<String, Integer> getGenderToday();
}
