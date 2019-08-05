package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinDao;
import kr.co.link.vo.Jisikin;
import kr.co.link.vo.JisikinTag;

@Service
public class JisikinServiceImpl implements JisikinService {

	@Autowired
	private JisikinDao jisikinDao;
	
	@Autowired
	private JisikinTagService tagService;
	
	@Override
	public int getJisikinSeq() {
		return jisikinDao.getJisikinSeq();
	}
	
	@Override
	public void addJisikin(Jisikin jisikin) {
		jisikinDao.addJisikin(jisikin);
	}
	
	
	@Override
	public int countTodayJisikin() {
		return jisikinDao.countTodayJisikin();
	}
	
	@Override
	public List<Jisikin> getJisikinByCategory(int categoryNo) {
		List<Jisikin> allJisikin = jisikinDao.getJisikinByCategory(categoryNo);
		
		
		// 태그들 각 지식인질문에 담기
		for (Jisikin j : allJisikin) {
			List<JisikinTag> tags = tagService.getTagByJisikin(j.getNo());
			j.setTags(tags);
		}
		
		return allJisikin;
	}
	
	@Override
	public List<Jisikin> getAllJisikin() {
		List<Jisikin> allJisikin = jisikinDao.getAllJisikin();

		// 태그들 각 지식인질문에 담기
		for (Jisikin j : allJisikin) {
			List<JisikinTag> tags = tagService.getTagByJisikin(j.getNo());
			j.setTags(tags);
		}
		
		return allJisikin;
	}
	
	@Override
	public Jisikin getJisikinByNo(int jisikinNo) {
		return (Jisikin)jisikinDao.getJisikinByNo(jisikinNo);
	}
	
	//카테소리별 키워드 검색
	@Override
	public List<Jisikin> searchJisikinsByCategory(Map<String, Object> map) {
		List<Jisikin> allJisikin = jisikinDao.searchJisikinsByCategory(map);
		// 태그들 각 지식인질문에 담기
		for (Jisikin j : allJisikin) {
			List<JisikinTag> tags = tagService.getTagByJisikin(j.getNo());
			j.setTags(tags);
		}
		
		return allJisikin;
	}
}
