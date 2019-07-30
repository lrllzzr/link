package kr.co.link.service;

import java.util.List;

import kr.co.link.vo.SeriesNotice;

public interface SeriesNoticeService {

	List<SeriesNotice> get3Notices();
	List<SeriesNotice> getAllNotices();
	void addNotice(SeriesNotice notice);
	SeriesNotice getNotice(int no);
}
