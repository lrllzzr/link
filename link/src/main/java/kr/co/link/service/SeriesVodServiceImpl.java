package kr.co.link.service;

import java.util.List;
import java.util.Map;

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
	public List<SeriesVod> getsomeLikesVods() {
		return seriesVodDao.getsomeLikesVods();
	}

	@Override
	public List<SeriesVod> get4BrandNewVods() {
		return seriesVodDao.get4BrandNewVods();
	}

	/*
	 * @Override public List<SeriesVod> getVodsBycategory(int no) { return
	 * seriesVodDao.getVodsBycategory(no); }
	 */

	@Override
	public List<SeriesVod> getVodsBycategory(Map<String, Object> map) {
		return seriesVodDao.getVodsBycategory(map);
	}

	@Override
	public List<SeriesVod> getDailyChart() {
		return seriesVodDao.getDailyChart();
	}

	@Override
	public List<SeriesVod> getWeeklyChart() {
		return seriesVodDao.getWeeklyChart();
	}

	@Override
	public List<SeriesVod> getMonthlyChart() {
		return seriesVodDao.getMonthlyChart();
	}

	@Override
	public SeriesVod getVodByVodNo(int no) {
		return seriesVodDao.getVodByVodNo(no);
	}

	@Override
	public List<SeriesVod> getVodsInUserCarts(String id) {
		return seriesVodDao.getVodsInUserCarts(id);
	}
	
	
}
