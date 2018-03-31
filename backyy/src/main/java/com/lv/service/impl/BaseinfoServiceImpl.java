
package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.BaseinfoDao;
import com.lv.entity.Baseinfo;
import com.lv.service.BaseinfoService;

/**
* ********************************************************
* @ClassName: BaseinfoServiceImpl
* @Description: 基本信息
* @author 自动生成
* @date 2014-11-01 下午 01:42:29 
*******************************************************
*/
@Service
public class BaseinfoServiceImpl extends BaseServiceImpl<Baseinfo,Integer> implements BaseinfoService{

	@Resource
	private BaseinfoDao baseinfoDao;

	@Resource
	public void setBaseDao(BaseinfoDao baseinfoDao) {
		super.setBaseDao(baseinfoDao);
	}
}

