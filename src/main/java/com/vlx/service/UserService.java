package com.vlx.service;

import com.vlx.entity.User;

public interface UserService {
	   public static final Integer ROLE_ADMIN=2;
	    public static final Integer ROLE_USER=1;
	void save(User user);

    User findByUsername(String username);
    
    public void removeById(Long id) ;
    
    void update(User user,long id);
}
