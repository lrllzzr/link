package kr.co.link.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.BandDao;
import kr.co.link.vo.Band;
import kr.co.link.vo.BandLogoImg;
import kr.co.link.vo.User;
@Service
public class BandServiceImpl implements BandService{

	@Autowired
	private BandDao bandDao;
	
	@Override
	public List<BandLogoImg> getAllLogoImg(int begin, int end) {
		Map<String, Object> num = new HashMap<String, Object>();
		num.put("begin", begin);
		num.put("end", end);
		return bandDao.getAllLogoImg(num);
	}
	
	@Override
	public void addBand(Band band) {
		bandDao.addBand(band);
	}
}
