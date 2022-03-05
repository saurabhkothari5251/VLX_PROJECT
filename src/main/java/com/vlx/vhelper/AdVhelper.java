package com.vlx.vhelper;


import com.vlx.entity.Ad;
import com.vlx.vo.AdVo;


public class AdVhelper {
private static AdVhelper adVhelper;


	
	public static  AdVhelper getInstance(){
	        if (adVhelper == null) {
	        	adVhelper = new AdVhelper();
	        }
	        return adVhelper;
	    }

	    public Ad parseAdVOtoAdEntity(AdVo vo){
	    	Ad ad = new Ad();
	    	
	    	
	    	ad.setId(vo.getId());
	    	ad.setName(vo.getName());
	    	ad.setDescription(vo.getDescription());
	    	ad.setLocation(vo.getLocation());
	    	ad.setPrice(vo.getPrice());
	    	ad.setImage(vo.getImage());
	    	ad.setCategory(vo.getCategory());
	        return ad;
	    }

	    public AdVo parseAdtoAdVO(Ad ad) {
	    	AdVo adVo = new AdVo();
	    	
	    	adVo.setId(ad.getId());
	    	adVo.setName(ad.getName());
	    	adVo.setDescription(ad.getDescription());
	    	adVo.setLocation(ad.getLocation());
	    	adVo.setPrice(ad.getPrice());
	    	adVo.setImage(ad.getImage());
	    	adVo.setCategory(ad.getCategory());
	       
	        return adVo;
	        
	     
	    }
}
