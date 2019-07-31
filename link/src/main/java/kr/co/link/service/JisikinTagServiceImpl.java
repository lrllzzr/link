package kr.co.link.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinTagDao;
import kr.co.link.vo.JisikinTag;

@Service
public class JisikinTagServiceImpl implements JisikinTagService{
	
	@Autowired
	private JisikinTagDao tagDao;
	
	@Override
	public void addTag(JisikinTag jiskinTag) {
		tagDao.addTag(jiskinTag);
	}

}
