
package com.lv.service.impl;

import com.lv.entity.Behavior;
import com.lv.dao.BehaviorDao;
import com.lv.service.BehaviorService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
* ********************************************************
* @ClassName: BehaviorServiceImpl
* @Description: 行为记录表
* @author 自动生成
* @date 2016-12-09 上午 10:58:42 
*******************************************************
*/
@Service
public class BehaviorServiceImpl extends BaseServiceImpl<Behavior,Integer> implements BehaviorService{

	@Resource
	private BehaviorDao behaviorDao;

	@Resource
	public void setBaseDao(BehaviorDao bDao) {
		super.setBaseDao(behaviorDao);
	}
}

