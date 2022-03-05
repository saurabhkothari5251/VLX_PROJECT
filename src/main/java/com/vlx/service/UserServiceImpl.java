package com.vlx.service;

import java.util.Arrays;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.vlx.entity.Roles;
import com.vlx.entity.User;
import com.vlx.repository.RoleRepository;
import com.vlx.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	 @Autowired
	    private UserRepository userRepository;
	    @Autowired
	    private RoleRepository roleRepository;
	    @Autowired
	    private BCryptPasswordEncoder bCryptPasswordEncoder;

	    @Override
	    public void save(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	        Roles userRole = roleRepository.findByRole("USER");
	        user.setRoles(new HashSet<Roles>(Arrays.asList(userRole)));
	        userRepository.save(user);
	    }
	    
	    @Override
	    public void update(User user,long id) {
	    	user.setId(id);
   	        Roles userRole = roleRepository.findByRole("USER");
	        user.setRoles(new HashSet<Roles>(Arrays.asList(userRole)));
	        userRepository.save(user);
	    }

	    @Override
	    public User findByUsername(String username) {
	   
	        return userRepository.findByUsername(username);
	    }
	    
	    @Override
	    public void removeById(Long id) {
	        userRepository.deleteById(id);
	    }
	    
	    

}
