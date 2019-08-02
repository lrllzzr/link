package kr.co.link.dao;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.JisikinAnswer;

@Repository
public interface JisikinAnswerDao {

	public void addAnswer(JisikinAnswer jisikinAnswer);
}
