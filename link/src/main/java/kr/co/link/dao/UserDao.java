package kr.co.link.dao;

import org.springframework.stereotype.Repository;

import kr.co.link.vo.User;

@Repository
public interface UserDao {

	public User getUserById(String userId);
}
