
package com.lv.service.impl;

import com.lv.entity.FilesInfo;
import com.lv.dao.FilesInfoDao;
import com.lv.service.FilesInfoService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
* ********************************************************
* @ClassName: FilesInfoServiceImpl
* @Description: 文件表
* @author 自动生成
* @date 2016-12-21 下午 06:19:13 
*******************************************************
*/
@Service
public class FilesInfoServiceImpl extends BaseServiceImpl<FilesInfo,Integer> implements FilesInfoService{

	@Resource
	private FilesInfoDao filesInfoDao;

	@Resource
	public void setBaseDao(FilesInfoDao fDao) {
		super.setBaseDao(filesInfoDao);
	}
}

