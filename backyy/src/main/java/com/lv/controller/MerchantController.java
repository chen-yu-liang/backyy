/**
 * 
 */
package com.lv.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
* @className : MerchantController.java
* @Description : 商户表
* @author ： Administrator  
* @date : 2018年3月31日   
*/
@Scope("prototype")
@Controller
@RequestMapping("/Merchant")
public class MerchantController extends BaseController {

}
