package kr.co.link.dao;

import java.util.List;

import kr.co.link.vo.SeriesCart;

public interface SeriesCartDao {

	List<SeriesCart> getCartsById(String id);
	void addCart(SeriesCart seriesCart);
	void deleteCartByEpisodeNo(int no);
	void deleteCartById(String id);
}
