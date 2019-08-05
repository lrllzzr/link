package kr.co.link.service;

import java.util.List;
import java.util.Map;

import kr.co.link.vo.Jisikin;

public interface JisikinService {

	public int getJisikinSeq();
	public void addJisikin(Jisikin jisikin);
	public int countTodayJisikin();
	public List<Jisikin> getJisikinByCategory(int categoryNo);
	public List<Jisikin> getAllJisikin();
	public Jisikin getJisikinByNo(int jisikinNo);
	
	//카테소리별 키워드 검색
	public List<Jisikin> searchJisikinsByCategory(Map<String, Object> map);
}
