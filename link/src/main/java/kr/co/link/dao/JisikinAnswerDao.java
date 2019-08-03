package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.JisikinAnswer;

@Repository
public interface JisikinAnswerDao {

	public void addAnswer(JisikinAnswer jisikinAnswer);
	public List<JisikinAnswer> getAnswersByJisikinNo(int jisikinNo);
}
