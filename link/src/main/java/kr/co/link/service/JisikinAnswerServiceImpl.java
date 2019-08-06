package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.JisikinAnswerDao;
import kr.co.link.vo.JisikinAnswer;
import kr.co.link.vo.JisikinRank;

@Service
public class JisikinAnswerServiceImpl implements JisikinAnswerService {

	@Autowired
	private JisikinAnswerDao answerDao;
	
	@Override
	public void addAnswer(JisikinAnswer jisikinAnswer) {
		answerDao.addAnswer(jisikinAnswer);
	}
	
	@Override
	public List<JisikinAnswer> getAnswersByJisikinNo(int jisikinNo) {
		return answerDao.getAnswersByJisikinNo(jisikinNo);
	}
	
	@Override
	public List<JisikinRank> getRank() {
		return answerDao.getRank();
	}
}
