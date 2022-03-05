package com.vlx.service;

import java.util.List;
import java.util.Optional;

import com.vlx.entity.Ad;
import com.vlx.entity.User;

public interface AdService {

	void saveAd(Ad ad);
	List<Ad> getAllActiveAds();
	Optional<Ad> getAdById(Long id);
	
	public void updateAd(Ad ad);
	
	public void deleteAd(Long id);
	
	List<Ad> getAllAdByUser(User user);


	public List<Ad> searchByKeyword(String name);
	
	
	List<Ad> searchByLocation(String name);
	Ad getAdsById(Long adid);
	
}