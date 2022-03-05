package com.vlx.vhelper;


import com.vlx.entity.Member;
import com.vlx.vo.MemberVo;

public class MemberVhelper {
private static MemberVhelper memberVhelper;


	
	public static  MemberVhelper getInstance(){
	        if (memberVhelper == null) {
	        	memberVhelper = new MemberVhelper();
	        }
	        return memberVhelper;
	    }

	    public Member parseMemberVOtoMemberEntity(MemberVo vo){
	    	Member member=new Member();
	    	
	    	
	    	member.setId(vo.getId());
	    	
	    	member.setType(vo.getType());
	    	member.setToDate(vo.getToDate());
	    	member.setUser(vo.getUser());
	    	member.setFromDate(vo.getFromDate());
	      
	        return member;
	    }

	    public MemberVo parseMembertoMemberVO(Member member) {
	    MemberVo vo=new MemberVo();
	    vo.setId(member.getId());
    	vo.setType(member.getType());
    	vo.setToDate(member.getToDate());
    	vo.setUser(member.getUser());
    	vo.setFromDate(member.getFromDate());
	        return vo;
	        
	     
	    }
}
