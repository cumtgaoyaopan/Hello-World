package org.fkit.bookstore.controller;

import javax.servlet.http.HttpSession;

import org.fkit.bookstore.domain.Detail;
import org.fkit.bookstore.service.BookstoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DetailController {
	/**
	 * 自动注入BookstoreService
	 */
	@Autowired
	@Qualifier("bookstoreService")
	private BookstoreService bookstoreService;
	/**
	 * 添加订单细节
	 */
	@RequestMapping(value="/addDetail")	
	public ModelAndView insertDetail(String loginname, 
			String bookname, 
			Double price, 
			Integer count,
			ModelAndView mv,
			HttpSession session){
		 bookstoreService.insertDetail(loginname, bookname,price,count);
		mv.setViewName("cart");
		return mv;
	}
}
