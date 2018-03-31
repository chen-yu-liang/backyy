
package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.UsersDao;
import com.lv.entity.Users;
import com.lv.service.UsersService;

/**
* ********************************************************
* @ClassName: UsersServiceImpl
* @Description: 用户表
* @author 自动生成
* @date 2014-11-01 上午 11:29:15 
*******************************************************
*/
@Service
public class UsersServiceImpl extends BaseServiceImpl<Users,Integer> implements UsersService{

	@Resource
	private UsersDao usersDao;

	@Resource
	public void setBaseDao(UsersDao uDao) {
		super.setBaseDao(usersDao);
	}
}

