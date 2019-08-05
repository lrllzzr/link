package kr.co.link.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Jisikin;
import kr.co.link.vo.JisikinCategory;

@Repository
public interface JisikinDao {

	public void addJisikin(Jisikin jisikin);
	public int getJisikinSeq();
	public int countTodayJisikin();
	public List<Jisikin> getJisikinByCategory(int categoryNo);
	public List<Jisikin> getAllJisikin();
	public Jisikin getJisikinByNo(int jisikinNo);
	
	//카테소리별 키워드 검색
	public List<Jisikin> searchJisikinsByCategory(Map<String, Object> map);
}