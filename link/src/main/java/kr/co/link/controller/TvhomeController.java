package kr.co.link.controller;

import java.util.Date;
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
import kr.co.link.service.TvCommentLikeService;
import kr.co.link.service.TvCommentService;
import kr.co.link.service.TvLaterService;
import kr.co.link.service.TvLikeService;
import kr.co.link.service.TvRecentService;
import kr.co.link.service.TvService;
import kr.co.link.vo.Tv;
import kr.co.link.vo.TvCommentLikes;
import kr.co.link.vo.TvHistory;
import kr.co.link.vo.TvLater;
import kr.co.link.vo.TvLikes;
import kr.co.link.vo.User;
import oracle.net.aso.o;

@Controller
@RequestMapping("/tv")
public class TvhomeController {

	@Autowired
	private TvService tvService; 
	
	@Autowired
	private TvLaterService tvLaterService;
	
	@Autowired
	private TvLikeService tvLikeService;
	
	@Autowired
	private TvCommentService tvCommentService;
	
	@Autowired
	private TvCommentLikeService tvCommentLikeService;
	
	@Autowired
	private TvRecentService tvRecentService;
	
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
		User user = (User)session.getAttribute("LOGIN_USER");

		Tv video = tvService.getVideoDetailByNo(vno);
		video.setViews(video.getViews()+1);
		
		tvService.updateVideo(video);
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("vno", vno);
		
		List<Tv> playlist =  tvService.getPlaylistByNo(vno);
		
		
		if (user != null) {
			Map<String, Object> info = new HashMap<String, Object>();
			info.put("userId", user.getId());
			info.put("vno", vno);
			int count = tvLikeService.getCountLikeById(info);
			if (count > 0) {
				model.addAttribute("status", "Like");
			}
			param.put("userId", user.getId());
		
			Tv tv = new Tv();
			tv.setNo(vno);
			User userId = new User();
			userId.setId(user.getId());
			
			TvHistory tvHistory = new TvHistory();
			tvHistory.setTv(tv);
			tvHistory.setUser(userId);
			
			Tv tvByRecent= tvRecentService.getTvRecentById(tvHistory);
			
			if(tvByRecent != null) {
				tvRecentService.updateRecentDate(tvHistory);
			}
			
			if(tvByRecent == null) {
				tvRecentService.addRecent(tvHistory);
				
			}
		
		}
		
		// ago JS를 사용하기위해서 getTime이 필요한데.. result값을 맵으로받아서 어려웠다. 선생님이 해결해줌
		List<Map<String, Object>> comments= tvCommentService.getAllCommentByVno(param);
		for(Map m : comments) {
			m.put("CREATEDATE", ((Date)m.get("CREATEDATE")).getTime());
		}
		
		System.out.println(comments);
		model.addAttribute("playlist",playlist);
		model.addAttribute("video",video);
		model.addAttribute("comments", comments);
		return "tv/detail";
	}
	
	
	  // 좋아요 싫어오 ajax
	@RequestMapping("/addLike.do")
	@ResponseBody 
	public int addLike(HttpSession session, int vno, String status) {
		
		User user = (User)session.getAttribute("LOGIN_USER");
		
		System.out.println(status);
		System.out.println(vno);
		
		if(status.equals("Y")) {
			// 이미 좋아요니까 삭제해
			Map<String, Object> likeInfo = new HashMap<String, Object>();
			likeInfo.put("userId", user.getId());
			likeInfo.put("vno", vno);
					
			tvLikeService.deleteLikeById(likeInfo);
		}
		
		if(status.equals("N")){
			// 좋아요 안되어있으니까 추가해
			TvLikes tvlike = new TvLikes();
			Tv tv = new Tv();
			User userr = new User();
			tv.setNo(vno);
			userr.setId(user.getId());
			
			tvlike.setUser(userr);
			tvlike.setTv(tv);
			
			tvLikeService.addLike(tvlike);
		}
		
		
		int count = tvLikeService.getCountByLike(vno);
		
		return count;
	}
	
	//댓글 달기
	@RequestMapping("/addComment.do")
	public String addComment(Model model, HttpSession session, int vno , String CommentContents) {
		User user = (User)session.getAttribute("LOGIN_USER");
		
		Map<String, Object> contents = new HashMap<String, Object>();
		contents.put("vno", vno);
		contents.put("contents", CommentContents);
		contents.put("userId", user.getId());
		
		tvCommentService.addComment(contents);
		
		return "redirect:detail.do?position=cmt&vno="+vno;
	}
	
	@RequestMapping("/addCommentLike.do")
	@ResponseBody
	public int addCommentLike(Model model, HttpSession session, int cno, String status)	{
		
		return 1;
	}
}
