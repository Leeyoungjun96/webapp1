package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Ch07Board;

@Controller
@RequestMapping("/ch07")
public class Ch07Controller {
	public static final Logger logger 
		= LoggerFactory.getLogger("Ch06Controller");
	
	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch07/content";
	}
	
	@GetMapping("/method1")
	public String method1(Model model) {
		logger.info("실행");
		model.addAttribute("name", "스프링");
		model.addAttribute("age", 26);
		model.addAttribute("job", "학생");

		return"ch07/el";
	}
	
	@GetMapping("/method2")
	public String method2(Model model) {
		Ch07Board board = new Ch07Board();
		board.setBno(1);
		board.setTitle("너무 추워요");
		board.setContent("그르게");
		board.setWriter("익명");
		board.setDate(new Date());
		model.addAttribute("board1", board);
		
		return"ch07/el";
	}
	
	@GetMapping("/method3")
	public String method3(Model model) {
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
		model.addAttribute("boardlist", boardlist);
		return"ch07/el";
	}
	
	
	
	
}
