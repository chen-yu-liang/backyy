
package com.lv.service.impl;

import com.lv.entity.BehaviorModel;
import com.lv.dao.BehaviorModelDao;
import com.lv.service.BehaviorModelService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
* ********************************************************
* @ClassName: BehaviorModelServiceImpl
* @Description: 按钮权限模板
* @author 自动生成
* @date 2016-12-14 下午 04:05:32 
*******************************************************
*/
@Service
public class BehaviorModelServiceImpl extends BaseServiceImpl<BehaviorModel,Integer> implements BehaviorModelService{

	@Resource
	private BehaviorModelDao behaviorModelDao;

	@Resource
	public void setBaseDao(BehaviorModelDao bDao) {
		super.setBaseDao(behaviorModelDao);
	}
}

