package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinDao;
import kr.co.link.vo.Jisikin;

@Service
public class JisikinServiceImpl implements JisikinService {

	@Autowired
	private JisikinDao jisikinDao;
	
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
		return jisikinDao.getJisikinByCategory(categoryNo);
	}
	
	@Override
	public List<Jisikin> getAllJisikin() {
		return jisikinDao.getAllJisikin();
	}
}
