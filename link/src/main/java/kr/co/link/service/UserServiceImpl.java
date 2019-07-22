package kr.co.link.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.link.dao.UserDao;
import kr.co.link.vo.User;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	// 로그인 시도한 아이디의 사용자정보 가져오기
	@Override 
	public User login(String userId, String password) {
		User user = userDao.getUserById(userId);
		if(user==null) {
			
		}
		
		// 수정해야함
		user = userDao.getUserById(userId);
		/*
		 * if(!password.equals(user.getPassword())){ return user; }
		 */
		return user;
	}
}
