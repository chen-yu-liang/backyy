/**
 * 
 */
package com.lv.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
* @className : AgentController.java
* @Description : 浠ｇ悊鍟嗚〃
* @author 锛� Administrator  
* @date : 2018骞�3鏈�31鏃�
 */
@Scope("prototype")
@Controller
@RequestMapping("/Agent")
public class AgentController extends BaseController {
	private String name = "asdf";

}
