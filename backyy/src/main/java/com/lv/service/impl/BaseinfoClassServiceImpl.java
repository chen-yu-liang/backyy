package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.BaseinfoClassDao;
import com.lv.entity.BaseinfoClass;
import com.lv.service.BaseinfoClassService;

@Service
public class BaseinfoClassServiceImpl extends BaseServiceImpl<BaseinfoClass,Integer> implements BaseinfoClassService {
	@Resource
	private BaseinfoClassDao baseinfoClassDao;

	@Resource
	public void setBaseDao(BaseinfoClassDao baseinfoClassDao) {
		super.setBaseDao(baseinfoClassDao);
	}

}
