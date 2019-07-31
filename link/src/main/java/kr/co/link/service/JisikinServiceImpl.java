package kr.co.link.service;

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
}
