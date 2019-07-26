package kr.co.link.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.Band;
import kr.co.link.vo.BandLogoImg;
import kr.co.link.vo.User;

@Repository
public interface BandDao {

	public List<BandLogoImg> getAllLogoImg(Map<String, Object> num);
	
	public void addBand(Band band);
}
