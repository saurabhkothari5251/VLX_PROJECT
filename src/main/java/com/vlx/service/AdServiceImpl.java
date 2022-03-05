package com.vlx.service;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import com.vlx.entity.Ad;
import com.vlx.entity.Category;
import com.vlx.entity.User;
import com.vlx.repository.AdRepository;
@Service
@Transactional
public class AdServiceImpl implements AdService {

	@Value("${upoadDir}")
	private String uploadFolder;
	@Autowired
	private AdRepository adrepository;
	
	@Override
	public void saveAd(Ad ad) {
		
		adrepository.save(ad);
	}

	@Override
	public List<Ad> getAllActiveAds() {
		
		return adrepository.findAll();
	}

	@Override
	public Optional<Ad> getAdById(Long id) {
		
		return adrepository.findById(id);
	}
	
	

	public void updateAd(Ad ad) {
		adrepository.save(ad);
	}
	public void deleteAd(Long id) {
		adrepository.deleteById(id);
	}

	@Override
	public List<Ad> getAllAdByUser(User user) {
		return adrepository.findAllByUser(user) ;
	}
	public String addad(String name, double price, String description, String location, Category category,
			HttpServletRequest request, MultipartFile file, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("user");
		String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
		String fileName = file.getOriginalFilename();
		String filePath = Paths.get(uploadDirectory, fileName).toString();

		String[] names = name.split(",");
		String[] descriptions = description.split(",");
		String[] locations = location.split(",");

		try(BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)))) {
			File dir = new File(uploadDirectory);
			if (!dir.exists()) {
			
				dir.mkdirs();
			}
			
			
			stream.write(file.getBytes());
			
		} catch (Exception e) {
			
			e.printStackTrace();
		    
		}
		
		byte[] imageData = file.getBytes();
		Ad ad = new Ad();
		ad.setName(names[0]);
		ad.setImage(imageData);
		ad.setPrice(price);
		ad.setDescription(descriptions[0]);
		ad.setLocation(locations[0]);
		ad.setCategory(category);
		ad.setUser(user);
		
		saveAd(ad);
		return fileName;
	}
	
	@Override
	public List<Ad> searchByKeyword(String name){
		return adrepository.findByNameContaining(name);
	}
	
	
	@Override
	public List<Ad> searchByLocation(String name){
		return adrepository.findByLocationContaining(name);
	}

	@Override
	public Ad getAdsById(Long adid) {

		return adrepository.findById(adid).get();
	}
}

