package com.vlx.controller;

import java.io.IOException;


import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vlx.entity.Ad;
import com.vlx.entity.Category;
import com.vlx.entity.User;
import com.vlx.repository.AdRepository;
import com.vlx.repository.MemberRepository;
import com.vlx.service.AdService;
import com.vlx.service.AdServiceImpl;
import com.vlx.service.CategoryService;
import com.vlx.vhelper.AdVhelper;
import com.vlx.vo.AdVo;

@Controller
public class AdController {

	public static final String PRODUCT = "product";
	public static final String HOME = "redirect:/home";
	@Autowired
	AdServiceImpl adserviceimpl;

	@Autowired
	private AdService adservice;
	
	@Autowired
	private AdRepository adRepository;

	@Autowired
	MemberRepository memberRepo;
	
	@Autowired
	private CategoryService categoryService;
	

	@RequestMapping(value = {"/add"})
	public String addProductPage(HttpSession session) {
		Long uid =  (Long)session.getAttribute("userId");
		
		
		int count=adRepository.countUser(uid);
		if(memberRepo.existsByUserId(uid))
		{
			return "index";
		}
		else 
		{
			if(count==0)
			{
				return "index";
			}
			else
			{
				return "redirect:/membership";
			}
		}
		
		
	}
		
	
		@GetMapping("/ad/show")
		public String show(Model map) {
			List<Ad> ads = adservice.getAllActiveAds();
			map.addAttribute("ads", ads);
			return "ads";
}
		
		@GetMapping("/myads")
		public String myads(Model model,HttpSession session){
			
			User user = (User) session.getAttribute("user");

			model.addAttribute("adsuser",adservice.getAllAdByUser(user));
			return "myads";
		}
		
		
		@PostMapping("/ad/saveAd")
		public @ResponseBody ResponseEntity<?> createEmployee(@RequestParam("name") String name,
				@RequestParam("price") double price, @RequestParam("description") String description, @RequestParam("location") String location, @RequestParam("category") Category category, Model model, HttpServletRequest request
				,final @RequestParam("image") MultipartFile file,HttpSession session) {
			
			
			try {
				String fileName= adserviceimpl.addad(name, price, description, location, category, request, file, session);
				return new ResponseEntity<>("Product Saved With File - " + fileName, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
		}
		
		
		@GetMapping("/ad/display/{id}")
		@ResponseBody
		public void showImage(@PathVariable("id") Long id, HttpServletResponse response, Optional<Ad> ad)
				throws ServletException, IOException {
			
			ad = adservice.getAdById(id);
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			
			if(ad.isPresent()) {
			response.getOutputStream().write(ad.get().getImage());
			}
			response.getOutputStream().close();
		}

		@GetMapping("/ad/addetails")
		public String showProductDetails(@RequestParam("id") Long id, Optional<Ad> ad, Model model) {
			try {
				
				if (id != 0) {
				ad = adservice.getAdById(id);
				
					if (ad.isPresent()) {
						model.addAttribute("id", ad.get().getId());
						model.addAttribute("description", ad.get().getDescription());
						model.addAttribute("name", ad.get().getName());
						model.addAttribute("price", ad.get().getPrice());
						model.addAttribute("location", ad.get().getLocation());
						model.addAttribute("category", ad.get().getCategory());
						return "addetails";
					}
					return HOME;
				}
			return HOME;
			} catch (Exception e) {
				e.printStackTrace();
				return HOME;
			}	
		}
			
		@RequestMapping("category/ad")
		
		public List<Ad> getAllAds()
		{
			return adservice.getAllActiveAds();
		}
		
		@RequestMapping("category/ad/{id}")
		

		public Optional<Ad>  getAd(@PathVariable Long id) {
			return adservice.getAdById(id);
		}
		
		
		@GetMapping(value="/delete/ad/{id}")
	    public String delete(@PathVariable Long id) {
			adservice.deleteAd(id);
	        return "redirect:/";
	    }
		

		 @GetMapping("/products/{id}")
		    public String viewProductByCategory(Model model,@PathVariable Long id) {
		        Optional<Category> category1 = categoryService.getCategory(id);
		        List<Ad> productList = adRepository.findAllByCategory(category1);
		        model.addAttribute("ads",productList);
		        model.addAttribute("categories",categoryService.getAllCategories());
		        return PRODUCT;
		    }
		 @GetMapping("/search")
		    public String getSearch(@RequestParam("search") String name,Model model)
		    {
		     
		 
		        List<Ad> productList = adservice.searchByKeyword(name);
		      
		        model.addAttribute("ads",productList);
		   
		        return PRODUCT;
		    }
		 @GetMapping("/searchByLocation")
		    public String getSearchByLocation(@RequestParam("location") String name,Model model)
		    {
		    
		        List<Ad> productList = adservice.searchByLocation(name);

		        model.addAttribute("ads",productList);
		    
		        return PRODUCT;
		    }
		 
			
			@RequestMapping("/update/ad/{id}")
	        public String editProduct(@PathVariable("id") Long adId, Model model) {
	            Ad ad = adservice.getAdsById(adId);

	            ad.setId(adId);
	            model.addAttribute("ad", ad);
	            return "updateAds";
	        }
	        
	        @PostMapping("/update")
	        public String editProductPost(@Valid @ModelAttribute("ad") AdVo adVo, BindingResult result,
	                HttpServletRequest request,HttpSession session) {
	 
	        	Ad ad = AdVhelper.getInstance(). parseAdVOtoAdEntity(adVo);
	            User uid =  (User)session.getAttribute("user");
	            ad.setUser(uid);
	            long id=ad.getId();
	     
	            Ad ad1 = adservice.getAdsById(id);
	            
	            ad.setImage(ad1.getImage());
	            adservice.saveAd(ad);

	            return "redirect:/";
	        }



}
