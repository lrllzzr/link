package kr.co.link.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinDao;

@Service
public class JisikinServiceImpl implements JisikinService {

	@Autowired
	private JisikinDao jisikinDao;
	
	@Override
	public int getJisikinSeq() {
		return jisikinDao.getJisikinSeq();
	}
}
