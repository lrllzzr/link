package kr.co.link.service;

import org.springframework.transaction.annotation.Transactional;

import kr.co.link.vo.User;

@Transactional
public interface UserService {

	public User login(String userId, String password) throws Exception;
	public User getUserById(String userId);
	public void updateUser(User user);
}
