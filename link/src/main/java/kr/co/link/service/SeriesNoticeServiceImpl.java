package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.SeriesNoticeDao;
import kr.co.link.vo.SeriesNotice;

@Service
public class SeriesNoticeServiceImpl implements SeriesNoticeService {
	
	@Autowired
	private SeriesNoticeDao seriesNoticeDao;

	@Override
	public List<SeriesNotice> getAllNotices() {
		return seriesNoticeDao.getAllNotices();
		
	}

	@Override
	public void addNotice(SeriesNotice notice) {
		seriesNoticeDao.addNotice(notice);
		
	}

	@Override
	public SeriesNotice getNotice(int no) {
		return seriesNoticeDao.getNotice(no);
	}

	@Override
	public List<SeriesNotice> get3Notices() {
		return seriesNoticeDao.get3Notices();
	}
}
