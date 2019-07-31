package kr.co.link.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Jisikin;
import kr.co.link.vo.JisikinCategory;

@Repository
public interface JisikinDao {

	public void addJisikin(Jisikin jisikin);
	public int getJisikinSeq();
}