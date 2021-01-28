package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.Ch14MemberDao;
import com.mycompany.webapp.dto.Ch14Member;

@Service
public class Ch14MemberService {
	private static Logger logger 
	= LoggerFactory.getLogger(Ch14EmployeeService.class);
	
	@Resource
	private Ch14MemberDao memberDao;
	
	public void join(Ch14Member member) {
		memberDao.insert(member);
	}
	
	public String login(Ch14Member member) {
		Ch14Member dbMember = memberDao.selectByPk(member.getMid());
		if(dbMember == null) { // 주어진 데이터가 없을 때
			return "wrongMid";
		} else if(dbMember.getMpassword().equals(member.getMpassword())){ // 로그인 성공
			return "success";
		} else {
			return "wrongMpassword";
		}
	}

	public Ch14Member getMember(String mid) {
		Ch14Member member = memberDao.selectByPk(mid);
		return member;
	}
	
	
}
