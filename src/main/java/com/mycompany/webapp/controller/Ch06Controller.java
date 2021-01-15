package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ch06")
public class Ch06Controller {
	public static final Logger logger = LoggerFactory.getLogger(Ch06Controller.class);
	
	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch06/content";
	}
	
	@GetMapping("/forward")
	public String forward() {
		logger.info("실행");
		return "ch06/forward"; // view name
	}
	
	@GetMapping("/redirect")
	public String redirect() {
		logger.info("리다이렉트 실행");
		return "redirect:/ch06/content"; // view name이 아님
	}
	
	@GetMapping("/login")
	public String login() {
		logger.info("로그인 성공");
		return "redirect:/ch05/content"; // view name이 아님
	}
	
	@GetMapping("/boardWrite")
	public String boardWrite() {
		logger.info("게시물 저장 성공");
		return "redirect:/ch06/boardList"; // view name이 아님
	}
	
	@GetMapping("/boardList")
	public String boardList() {
		logger.info("게시물 목록 생성");
		return "ch06/boardList"; // view name이 아님
	}
}
