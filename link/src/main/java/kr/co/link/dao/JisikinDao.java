package kr.co.link.dao;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Jisikin;

@Repository
public interface JisikinDao {

	public void addJisikin(Jisikin jisikin);
}
