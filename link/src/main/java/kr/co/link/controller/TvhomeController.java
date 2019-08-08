package kr.co.link.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.link.dao.TvDao;
import kr.co.link.service.TvLaterService;
import kr.co.link.service.TvService;
import kr.co.link.vo.Tv;
import kr.co.link.vo.TvLater;
import kr.co.link.vo.User;
import oracle.net.aso.o;

@Controller
@RequestMapping("/tv")
public class TvhomeController {

	@Autowired
	private TvService tvService; 
	
	@Autowired
	private TvLaterService tvLaterService;
	
	
	// TV홈 
	@RequestMapping("/home.do")
	public String home(Model model) {
		
		List<Tv> tvs = tvService.getVideoTop20();
		List<Tv> likes = tvService.getVideoLikes();
		List<Tv> recents = tvService.getVideoRecent();
		
		model.addAttribute("tvs", tvs);
		model.addAttribute("likes", likes);
		model.addAttribute("recents", recents);
		
		return "tv/home";
	}
	
	// 인기 목록 조회
	@RequestMapping("/rank.do")
	public String rank(String category, Model model) {
		
		Map<String, Object> opt = new HashMap<String, Object>();
		opt.put("opt", "best");
		List<Tv> bestTvs = tvService.getVideoByOpt(opt);
		opt.clear();
		
		opt.put("opt", "suggest");
		List<Tv> suggestTvs = tvService.getVideoByOpt(opt);
		opt.clear();
		
		opt.put("opt", "recent");
		List<Tv> recentTvs = tvService.getVideoByOpt(opt);
		
		model.addAttribute("bestTvs",bestTvs);
		model.addAttribute("suggestTvs",suggestTvs);
		model.addAttribute("recentTvs",recentTvs);
		
		return "tv/rank";
	}
	
	
		
	@RequestMapping("/history.do")
	public String recent(String sort, Model model, HttpSession session) {
		User user = (User)session.getAttribute("LOGIN_USER");
		
		List<Tv> videos = null;  
		
		
		if(sort.equals("recent")) {
			 videos = tvService.getVideoByHistory(user.getId());
		} 
		if (sort.equals("like")) {
			 videos = tvService.getVideoByLikes(user.getId());
			
		}
		if (sort.equals("later")) {
			 videos = tvService.getVideoByLater(user.getId());
		}
		
		model.addAttribute("videos", videos);
		
		return "tv/history";
	}


	
	// 나중에 보기 등록 기능 
	@RequestMapping("/addLater.do")
	@ResponseBody
	public String addLater(int vno, HttpSession session) {
		User user = (User)session.getAttribute("LOGIN_USER");
		
		String result = "fail";
		
		String id = user.getId();
		
		User userId = new User();
		Tv tvNo = new Tv();
		
		userId.setId(id);
		tvNo.setNo(vno);
		
		
		TvLater tvLater = new TvLater();
		tvLater.setTv(tvNo);
		tvLater.setUser(userId);
		
		Tv tvLaterById = tvLaterService.getTvLaterById(tvLater);
		
		
		if(tvLaterById == null) {
			
			result = "success";
			tvLaterService.addLater(tvLater);
		}
		
		
		return result;
	}
	
	// 최근동영상, 나중에동영상, 좋아요동영상 삭제 기능(ajax)
	@RequestMapping("/deleteHistory.do")
	@ResponseBody
	public void deleteHistory(HttpSession session, int[] vno, String sort) {
		User user = (User)session.getAttribute("LOGIN_USER");
		
		
		if(sort.equals("later")){
			Map<String, Object> laterInfo = new HashMap<String, Object>();
			
			laterInfo.put("userId", user.getId());
			laterInfo.put("vno", vno);
			
			tvService.deleteHistoryByLater(laterInfo);
			
		} 
		
		if(sort.equals("like")) {
			Map<String, Object> likeInfo = new HashMap<String, Object>();
			
			likeInfo.put("userId", user.getId());
			likeInfo.put("vno", vno);
			
			tvService.deleteHistoryByLike(likeInfo);
		}
		
		if(sort.equals("recent")) {
			Map<String, Object> recentInfo = new HashMap<String, Object>();
			
			recentInfo.put("userId", user.getId());
			recentInfo.put("vno", vno);
			
			tvService.deleteHistoryByRecent(recentInfo);
		}
	}
	
	// 동영상 디테일 페이지
	
	@RequestMapping("/detail.do")
	public String detail(int vno, HttpSession session, Model model) {

		Tv video = tvService.getVideoDetailByNo(vno);
		video.setViews(video.getViews()+1);
		
		tvService.updateVideo(video);
		
		List<Tv> playlist =  tvService.getPlaylistByNo(vno);
		
		
		
		model.addAttribute("playlist",playlist);
		model.addAttribute("video",video);
		
			
		return "tv/detail";
	}
	
	// 댓글달기
	@RequestMapping("/addComment.do")
	public String addComment (int vno, HttpSession session, Model model) {
		
		return "tv/detail";
	}
	
}
