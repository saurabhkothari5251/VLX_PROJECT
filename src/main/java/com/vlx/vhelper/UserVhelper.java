package com.vlx.vhelper;

import com.vlx.entity.User;
import com.vlx.vo.UserVo;

public class UserVhelper {
private static UserVhelper userVhelper;


	
	public static  UserVhelper getInstance(){
	        if (userVhelper == null) {
	        	userVhelper = new UserVhelper();
	        }
	        return userVhelper;
	    }

	    public User parseUserVOtoUserEntity(UserVo vo){
	    	User user = new User();
	    	
	    	
	    	user.setId(vo.getId());
	    	user.setName(vo.getName());
	    	user.setEmailId(vo.getEmailId());
	    	user.setUsername(vo.getUsername());
	    	user.setPassword(vo.getPassword());
	    	user.setRoles(vo.getRoles());
	    	user.setPasswordConfirm(vo.getPasswordConfirm());
	    	user.setMobileNumber(vo.getMobileNumber());

	      
	        return user;
	    }

	    public UserVo parseUsertoUserVO(User vo) {
	    	UserVo user = new UserVo();
	    	
	    	user.setId(vo.getId());
	    	user.setName(vo.getName());
	    	user.setEmailId(vo.getEmailId());
	    	user.setUsername(vo.getUsername());
	    	user.setPassword(vo.getPassword());
	    	user.setRoles(vo.getRoles());
	    	user.setPasswordConfirm(vo.getPasswordConfirm());
	    	user.setMobileNumber(vo.getMobileNumber());
	       
	        return user;
	        
	     
	    }

}
