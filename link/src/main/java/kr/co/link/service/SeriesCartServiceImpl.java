package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.SeriesCartDao;
import kr.co.link.vo.SeriesCart;

@Service
public class SeriesCartServiceImpl implements SeriesCartService {

	@Autowired
	SeriesCartDao seriesCartDao;
	
	@Override
	public List<SeriesCart> getCartsById(String id) {
		return seriesCartDao.getCartsById(id);
	}

	@Override
	public void addCart(SeriesCart seriesCart) {
		seriesCartDao.addCart(seriesCart);
	}

	@Override
	public void deleteCartByEpisodeNo(int no) {
		seriesCartDao.deleteCartByEpisodeNo(no);
	}

	@Override
	public void deleteCartById(String id) {
		seriesCartDao.deleteCartById(id);
	}

}
