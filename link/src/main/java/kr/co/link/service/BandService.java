package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.Band;
import kr.co.link.vo.BandLogoImg;
import kr.co.link.vo.User;

public interface BandService {

	public List<BandLogoImg> getAllLogoImg(int begin, int end);
	
	public void addBand(Band band);
}
