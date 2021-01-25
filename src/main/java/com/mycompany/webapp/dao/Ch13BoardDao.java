package com.mycompany.webapp.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface Ch13BoardDao {
	public static final Logger logger 
	= LoggerFactory.getLogger(Ch13BoardDao1.class);
		
	public default void insert() {
		logger.info("게시물을 가져옵니다.");
	}
}
