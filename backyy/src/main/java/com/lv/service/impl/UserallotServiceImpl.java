
package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.UserallotDao;
import com.lv.entity.Userallot;
import com.lv.service.UserallotService;

/**
* ********************************************************
* @ClassName: UserallotServiceImpl
* @Description: null
* @author 自动生成
* @date 2015-04-17 下午 05:19:24 
*******************************************************
*/
@Service
public class UserallotServiceImpl extends BaseServiceImpl<Userallot,Integer> implements UserallotService{

	@Resource
	private UserallotDao userallotDao;

	@Resource
	public void setBaseDao(UserallotDao uDao) {
		super.setBaseDao(userallotDao);
	}
}

