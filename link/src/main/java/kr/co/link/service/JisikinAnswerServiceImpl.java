package kr.co.link.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinAnswerDao;
import kr.co.link.vo.JisikinAnswer;

@Service
public class JisikinAnswerServiceImpl implements JisikinAnswerService {

	@Autowired
	private JisikinAnswerDao answerDao;
	
	@Override
	public void addAnswer(JisikinAnswer jisikinAnswer) {
		answerDao.addAnswer(jisikinAnswer);
	}
}
