package kr.co.link.dao;

import java.util.List;

import kr.co.link.vo.SeriesNotice;
import kr.co.link.vo.SeriesVod;

public interface SeriesNoticeDao {

	List<SeriesNotice> get3Notices();
	
	List<SeriesNotice> getAllNotices();
	void addNotice(SeriesNotice notice);
	SeriesNotice getNotice(int no);
	
}
