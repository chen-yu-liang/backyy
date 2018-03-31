
package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.PermissionDao;
import com.lv.entity.Permission;
import com.lv.service.PermissionService;

/**
* ********************************************************
* @ClassName: PermissionServiceImpl
* @Description: null
* @author 自动生成
* @date 2015-04-10 下午 02:11:39 
*******************************************************
*/
@Service
public class PermissionServiceImpl extends BaseServiceImpl<Permission,Integer> implements PermissionService{

	@Resource
	private PermissionDao permissionDao;

	@Resource
	public void setBaseDao(PermissionDao pDao) {
		super.setBaseDao(permissionDao);
	}
}

