package com.acorn.finalp_join;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

	void createUser(UserVO uservo);
	UserVO getUserById(String id);
	List<UserVO> getUserAll = null;
	void updateUser(UserVO uservo);
	void removeUserById(String id);
	
}
