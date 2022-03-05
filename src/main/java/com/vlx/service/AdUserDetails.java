package com.vlx.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.vlx.entity.Roles;
import com.vlx.entity.User;

public class AdUserDetails implements UserDetails,Serializable {
	 
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5596695816110889020L;
	private User user;
     
	    public AdUserDetails(User user) {
	        this.user = user;
	    }
	 
	    @Override
	    public Collection<? extends GrantedAuthority> getAuthorities() {
	        Set<Roles> roles = user.getRoles();
	        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
	         
	        for (Roles role : roles) {
	            authorities.add(new SimpleGrantedAuthority(role.getRole()));
	        }
	        return authorities;
	    }
	 
	    @Override
	    public String getPassword() {
	        return user.getPassword();
	    }
	 
	    @Override
	    public String getUsername() {
	        return user.getUsername();
	    }
	 
	    @Override
	    public boolean isAccountNonExpired() {
	        return true;
	    }
	 
	    @Override
	    public boolean isAccountNonLocked() {
	        return true;
	    }
	 
	    @Override
	    public boolean isCredentialsNonExpired() {
	        return true;
	    }
	 
	    @Override
	    public boolean isEnabled() {
	        return true;
	    }
	    


}
