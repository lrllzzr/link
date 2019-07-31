package kr.co.link.dao;

import java.util.List;

import kr.co.link.vo.SeriesNotice;
import kr.co.link.vo.SeriesVod;

public interface SeriesVodDao {

	List<SeriesVod> get10LikesVods();
	/* List<SeriesVod> get4BrandNewVods(); */
}
