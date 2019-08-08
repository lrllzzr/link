package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.SeriesCart;

public interface SeriesCartService {

	List<SeriesCart> getCartsById(String id);
	void addCart(SeriesCart seriesCart);
	void deleteCartByEpisodeNo(int no);
	void deleteCartById(String id);
}
