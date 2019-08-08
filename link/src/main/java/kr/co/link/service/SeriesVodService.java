package kr.co.link.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.link.vo.SeriesNotice;
import kr.co.link.vo.SeriesVod;

@Service
public interface SeriesVodService {

	List<SeriesVod> getsomeLikesVods();
	List<SeriesVod> get4BrandNewVods();
	// List<SeriesVod> getVodsBycategory(int no);
	List<SeriesVod> getVodsBycategory(Map<String, Object> map);
	List<SeriesVod> getDailyChart();
	List<SeriesVod> getWeeklyChart();
	List<SeriesVod> getMonthlyChart();
	
	SeriesVod getVodByVodNo(int no);
	List<SeriesVod> getVodsInUserCarts(String id);
}
