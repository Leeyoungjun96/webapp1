package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Ch07Board;
import com.mycompany.webapp.dto.Ch08Board;

@Controller
@RequestMapping("/ch08")
public class Ch08Controller {
	public static final Logger logger 
		= LoggerFactory.getLogger(Ch08Controller.class);
	
	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch08/content";
	}
	
	@GetMapping("/method1")
	public String method1(HttpSession session) {
		logger.info("실행");
		session.setAttribute("name", "스프링");
		session.setAttribute("age", 26);
		session.setAttribute("job", "학생");

		return"ch08/el";
	}
	
	@GetMapping("/method2")
	public String method2(HttpSession session) {
		Ch07Board board = new Ch07Board();
		board.setBno(1);
		board.setTitle("너무 추워요");
		board.setContent("그르게");
		board.setWriter("익명");
		board.setDate(new Date());
		session.setAttribute("board1", board);
		
		return"ch08/el";
	}
	
	@GetMapping("/method3")
	public String method3(HttpSession session) {
		List<Ch07Board> boardlist = new ArrayList<>();
		for(int i = 1; i <= 10; i++) {
			Ch07Board board = new Ch07Board();
			board.setBno(i);
			board.setTitle("너무 추워요" + i);
			board.setContent("그르게" + i);
			board.setWriter("익명" + i);
			board.setDate(new Date());
			boardlist.add(board);
		}
		session.setAttribute("boardlist", boardlist);
		return"ch08/el";
	}
	
	@PostMapping("/login")
	public String login(String uid, String upassword, HttpSession session) {
		if(uid.equals("admin") && upassword.contentEquals("12345"))
		session.setAttribute("loginStatus", uid);
		return"redirect:/ch08/content";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		
		// 개별적으로 데이터를 삭제 
		// session.removeAttribute("loginStatus");
		
		
		// 세션의 모든 데이터를 삭제
		session.invalidate();
		return"redirect:/ch08/content";
	}
	
	@PostMapping("/boardWrite")
	public String boardWrite(Ch08Board board, HttpSession session) {
		String uid = (String) session.getAttribute("loginStatus");
		if(uid != null) {
			board.setWriter(uid);
			logger.info("title:" + board.getTitle());
			logger.info("content:" + board.getContent());
			logger.info("게시물 성공적으로 저장");
		} else {
			logger.info("로그인이 안되어있음");
		}
		return "redirect:/ch08/content";
	}
}