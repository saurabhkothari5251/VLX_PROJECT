package com.vlx.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.vlx.entity.Ad;
import com.vlx.entity.Category;
import com.vlx.entity.User;
import com.vlx.repository.AdRepository;
import com.vlx.repository.CategoryRepository;
import com.vlx.repository.UserRepository;
import com.vlx.service.AdUserDetails;
import com.vlx.service.SecurityService;
import com.vlx.service.UserService;
import com.vlx.validator.UserValidator;
import com.vlx.vhelper.UserVhelper;
import com.vlx.vo.UserVo;

@Controller
public class UserController {
	
	public static final String ROLES = "roles";
	public static final String REDIRECT = "redirect:/";
	@Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private AdRepository adRepository;
    
    @Autowired
    private CategoryRepository categoryRepository;
    
    long id;
    
    public User auth()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
       
        return userService.findByUsername(auth.getName());
    }
    public String getRole()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findByUsername(auth.getName());

       
        return userRepository.findUserRole(user.getId());
    }
    
    public List<Category> getcategory()
    {
      
        return categoryRepository.findAll();
   }

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") UserVo userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        User user = UserVhelper.getInstance().parseUserVOtoUserEntity(userForm);
        userService.save(user);
        UserVo userForm1 = UserVhelper.getInstance().parseUsertoUserVO(user);

        securityService.autoLogin(userForm1.getUsername(), userForm1.getPasswordConfirm());

        return REDIRECT;
    }
    @GetMapping("/login")
    public String login(@AuthenticationPrincipal AdUserDetails userDetails,Model model, String error, String logout,HttpSession session) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");       
        
        return "login";
    }


    @GetMapping("/account")
    public String account(Model model) {
      
        return "account";
    }
    
    @GetMapping("/update/{id}")
    public String updateUser(
    		 @PathVariable(value="id") long userId,
    		     HttpSession session, Model model)  {
    	id=userId;
    	User user = userRepository.findById(userId);
    	

		 model.addAttribute("editForm",user);

        return "editAccount";
        
   }


    
    @PostMapping("/edit")
    public String updateUse(@ModelAttribute("editForm") UserVo editForm) {
    	
    	User  user = userRepository.findById(id);
    	editForm.setPasswordConfirm(user.getPasswordConfirm());
    	editForm.setPassword(user.getPassword());
    	editForm.setUsername(user.getUsername());
    	 User userEntity = UserVhelper.getInstance().parseUserVOtoUserEntity(editForm);
    	userService.update(userEntity,id);
    	return REDIRECT;
    }
    
   
    @GetMapping("/profile/{id}")
    public String getUser(Model model,@PathVariable long id)
    {
        User user = userRepository.findById(id);
       model.addAttribute("user",user);
       
        model.addAttribute(ROLES,getRole());
        model.addAttribute("user", auth());    
        return "profile";
    }   
    
    
    @GetMapping("admin/allUser")
    public String getAllUsers(Model model)
    {
        List<User> user = userRepository.findAll();

        model.addAttribute("user", auth());
        model.addAttribute(ROLES,getRole());
        model.addAttribute("allusers",user);
        model.addAttribute("categories",getcategory());
        return "alluser";
    }
    
    @GetMapping("/delete/{userId}")
    public String delete(@PathVariable Long userId) {
        userService.removeById(userId);
        return REDIRECT;
    }
    
    @GetMapping("admin/allProduct")
    public String getAllProduct(Model model)
    {
       List<Ad> product = adRepository.findAll();

        model.addAttribute("user", auth());
        model.addAttribute(ROLES,getRole());
        model.addAttribute("ads",product);
        model.addAttribute("categories",getcategory());
        return "allAds";
    }
}
