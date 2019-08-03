package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.JisikinAnswer;

public interface JisikinAnswerService {

	public void addAnswer(JisikinAnswer jisikinAnswer);
	public List<JisikinAnswer> getAnswersByJisikinNo(int jisikinNo);
}
