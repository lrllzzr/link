package kr.co.link.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.SeriesNoticeDao;
import kr.co.link.dao.SeriesVodDao;
import kr.co.link.vo.SeriesNotice;
import kr.co.link.vo.SeriesVod;

@Service
public class SeriesVodServiceImpl implements SeriesVodService {
	
	@Autowired
	private SeriesVodDao seriesVodDao;

	@Override
	public List<SeriesVod> get10LikesVods() {
		return seriesVodDao.get10LikesVods();
	}

	/*
	 * @Override public List<SeriesVod> get4BrandNewVods() { return
	 * seriesVodDao.get4BrandNewVods(); }
	 */
}
