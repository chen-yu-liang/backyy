
package com.lv.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lv.dao.BackCarteDao;
import com.lv.entity.BackCarte;
import com.lv.service.BackCarteService;

/**
* ********************************************************
* @ClassName: BackCarteServiceImpl
* @Description: 分公司菜单表
* @author 自动生成
* @date 2015-04-07 上午 10:48:43 
*******************************************************
*/
@Service
public class BackCarteServiceImpl extends BaseServiceImpl<BackCarte,Integer> implements BackCarteService{

	@Resource
	private BackCarteDao backCarteDao;

	@Resource
	public void setBaseDao(BackCarteDao bDao) {
		super.setBaseDao(backCarteDao);
	}
}

