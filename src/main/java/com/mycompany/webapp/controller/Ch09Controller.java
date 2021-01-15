package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Ch09User;

@Controller
@RequestMapping("/ch09")
public class Ch09Controller {
	public static final Logger logger 
		= LoggerFactory.getLogger(Ch09Controller.class);
	
	@GetMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch09/content";
	}
	
	@PostMapping("/fileupload")
	public String fileupload(Ch09User user) {
		// 문자 파트 정보
		String uid = user.getUid();
		String uname = user.getUname();
		String upassword = user.getUpassword();
		logger.info(uid + " " + uname + " " + upassword);
		
		// 파일 파트 정보얻기
		MultipartFile uphoto = user.getUphoto();
		if(!uphoto.isEmpty()) { // 파일이 비어있으면 실행하지 않음	
			String originalFileName = uphoto.getOriginalFilename();
			String contentType = uphoto.getContentType();
			long size = uphoto.getSize();
			logger.info(originalFileName + ": originalFileName");
			logger.info(contentType + ": contentType");
			logger.info(size + ": size");
			
			// 파일 저장 이름 및 경로
			String saveDirPath = "D:/MyWorkspace/uploadfiles/";
			String fileName = new Date().getTime() + "-" + originalFileName;
			String filePath = saveDirPath + fileName;
			File file = new File(filePath); // 파일의 경로를 갖고 있는 객체
			try {
				uphoto.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/ch09/content";
	}
	
	@GetMapping("/photolist")
	public String photoList(Model model) {
		logger.info("실행");
		String saveDirPath = "D:/MyWorkspace/uploadfiles/";
		File dir = new File(saveDirPath);
		String[] fileNames = dir.list();
		model.addAttribute("fileNames", fileNames);
		return "ch09/photolist";
		
	}
	
	@GetMapping("/photodownload")
	public void photodownload(String photo, HttpServletResponse response) {
		
		// 응답 본문 데이터의 종류를 응답 헤더에 추가
		response.setContentType("image/jpeg");
		
		// 한글파일 출력하도록만듬
		try {// Http 규약에 따라 헤더에는 한글을 넣지 못함
			photo = new String(photo.getBytes("UTF-8"), "ISO-8859-1"); 
		} catch (Exception e1) {} 
		
		// 응답 본문 데이터를 파일로 다운로드 받을 수 있도록 응답 헤더에 추가
		response.setHeader("Content-Disposition", "attachment; filename=\"" + photo + "\"");
		
		try {
			String saveDirPath = "D:/MyWorkspace/uploadfiles/";
			String filePath = saveDirPath + photo;
			InputStream is = new FileInputStream(filePath);
			OutputStream os = response.getOutputStream();
			/*
			 * while(true) { byte[] data = new byte[1024]; int readByteNum = is.read(data);
			 * if(readByteNum == -1) break; os.write(data, 0, readByteNum); }
			 */
			FileCopyUtils.copy(is, os);
			os.flush();
			os.close();
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
