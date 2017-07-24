package org.fkit.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.bookstore.domain.User;
import org.fkit.bookstore.service.BookstoreService;
import org.fkit.bookstore.util.common.BookstoreConstants;
/*import org.fkit.bookstore.util.tag.PageModel;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 *处理用户请求控制器
 */
@Controller
public class UserController {
	/**
	 * 自动注入BookstoreService
	 */
	@Autowired
	@Qualifier("bookstoreService")
	private BookstoreService bookstoreService;
	/**
	 * 处理登录请求
	 * @param String loginname 登录名
	 * @param String password 密码
	 * @return 跳转的视图
	 */
	@RequestMapping(value="/login")
	public ModelAndView login(@RequestParam("loginname") String loginname,
			@RequestParam("password") String password,
			HttpSession session,
			ModelAndView mv){
		//调用业务逻辑组件判断用户是否可以登录
		User user = bookstoreService.login(loginname, password);
		if(user != null){
			//将用户保存到HttpSession当中
			session.setAttribute(BookstoreConstants.USER_SESSION, user);
			//客户端跳转到home页面
			mv.setViewName("forward:/home");
		}else{
			//设置登录失败提示信息
			mv.addObject("message", "登录名或密码错误！请重新输入");
			//服务期内不跳转到登录页面
			mv.setViewName("forward:/loginForm");
		}
		return mv;
	}
	/**
	 * 处理登录请求
	 * @param String loginname 登录名
	 * @param String password 密码
	 * @return 跳转的视图
	 */
	@RequestMapping(value="/findpassword")
	public ModelAndView forget( 
			@RequestParam("loginname") String loginname,
			@RequestParam("phonenumber") String phonenumber,
			@RequestParam("email") String email,
			HttpSession session,
			ModelAndView mv){
		//调用业务逻辑组件判断用户是否找回密码
		User user = bookstoreService.forget(loginname,phonenumber, email);
		if(user != null){
			//将用户保存到HttpSession当中
			session.setAttribute("user", user);
			//客户端跳转到main页面
			mv.setViewName("forward:/main");
		}else{
			//设置找回失败失败提示信息
			mv.addObject("message", "电话号码或电子邮件错误！请重新输入");
			//服务期内不跳转到登录页面
			mv.setViewName("forward:/resigter");
		}
		return mv;
	}
	/**
	 * 处理查询请求
	 * @param pageIndex 请求的是第几页
	 * @param user 模糊查询参数
	 * @param Model model
	 */
	/**@RequestMapping(value="/user/selectUser")
	public String selectUser(Integer pageIndex,
			@ModelAttribute User user,
			Model model){
		System.out.println("user = " + user);
		PageModel pageModel = new PageModel();
		if(pageIndex != null){
			pageModel.setPageIndex(pageIndex);
		}*/
		/**查询用户信息**/
		/**List<User> users = bookstoreService.findUser(user, pageModel);
		model.addAttribute("users",users);
		model.addAttribute("pageModel", pageModel);
		return "user/user";
	}*/
	/**
	 * 处理删除用户请求
	 * @param String userIDs 需要删除的userID字符串
	 * @param ModelAndView mv
	 */
	@RequestMapping(value="/user/removeUser")
	public ModelAndView removeUser(String userIDs,ModelAndView mv){
		//分解userID字符串
		String[] userIDArray = userIDs.split(",");
		for(String userID : userIDArray){
			//根据userID删除用户
			bookstoreService.removeUserByUserID(Integer.parseInt(userID));
		}
		//设置客户端跳转到查询请求
		mv.setViewName("redirect:/user/selectUser");
		//返回ModelAndView
		return mv;
	}
	/**
	 * 处理修改用户请求
	 * @param String flag 标记， 1表示跳转到修改页面，2表示执行修改操作
	 * @param User user 要修改用户的对象
	 * @param ModelAndView mv 
	 */
	@RequestMapping(value="/user/updateUser")
	public ModelAndView updateUser(
			String flag,
			@ModelAttribute User user,
			ModelAndView mv){
		if(flag.equals("1")){
			//根据userID查询用户
			User target = bookstoreService.findUserByUserID(user.getUserID());
			//设置Model数据
			mv.addObject("user",target);
			//返回修改用户页面
			mv.setViewName("user/showUpdateUser");
		}else{
			//执行修改操作
			bookstoreService.modifyUser(user);
			//设置客户端跳转到查询请求
			mv.setViewName("redirect:/user/selectUser");
		}
		//返回
		return mv;
	}
	/**
	 * 处理添加请求
	 * @param String flag 标记， 1表示跳转到添加页面，2表示执行添加操作
	 * @param User user 要修改用户的对象
	 * @param ModelAndView mv 
	 */
	@RequestMapping(value="/addUser")
	public ModelAndView addUser(
		    //String flag,
			@ModelAttribute User user,
			ModelAndView mv){
		//if(flag.equals("1")){
			//返回修改用户页面
			//mv.setViewName("user/showAddUser");
		//}else{
			//执行添加操作
			bookstoreService.addUser(user);
			//设置客户端跳转到首页
			mv.setViewName("home");
	//}
	//返回
		return mv;
	}
}
