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
* @Description : 代理商表
* @author ： Administrator  
* @date : 2018年3月31日
 */
@Scope("prototype")
@Controller
@RequestMapping("/Agent")
public class AgentController extends BaseController {

}
