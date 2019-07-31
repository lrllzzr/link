package kr.co.link.service;

import java.util.List;
import org.springframework.stereotype.Service;
import kr.co.link.vo.SeriesVod;

@Service
public interface SeriesVodService {

	List<SeriesVod> get10LikesVods();
	/* List<SeriesVod> get4BrandNewVods(); */
}
