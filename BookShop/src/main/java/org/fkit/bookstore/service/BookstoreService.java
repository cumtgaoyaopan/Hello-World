package org.fkit.bookstore.service;

import java.util.List;

import org.fkit.bookstore.domain.*;
//import org.fkit.bookstore.util.tag.PageModel;

public interface BookstoreService {
	/**
	 * 用户登录
	 * @Param loginname
	 * @Param password
	 * @return User 对象
	 * */
	User login(String loginname,String password);
	/**
	 * 用户找回密码
	 * @Param phone
	 * @Param email
	 * @return User 对象
	 * */
	User forget(String loginname,String phonenumber,String email);
	/**
	 * 根据userID查询用户
	 * @Param userID
	 * @return 用户对象
	 * */
	User findUserByUserID(Integer userID);
	/**
	 * 根据userID删除用户
	 * @Param userID
	 * */
	void removeUserByUserID(Integer userID);
	/**
	 * 修改用户
	 * @Param User 用户对象
	 * */
	void modifyUser(User user);
	/**
	 * 添加用户
	 * @Param User 用户对象
	 * */
	void addUser(User user);
	/**
	 * 查找小说图书
	 * @return Book小说对象集合
	 */
	List<Book> getAllOneBook();
	/**
	 * 查找文学图书
	 * @return Book文学对象集合
	 */
	List<Book> getAllTwoBook();
	/**
	 * 查找历史图书
	 * @return Book对象历史集合
	 */
	List<Book> getAllThreeBook();
	/**
	 * 查找科普图书
	 * @return Book科普对象集合
	 */
	List<Book> getAllFourBook();
	/**
	 * 根据bookID查找书籍细节
	 * @Param bookID
	 * */
	Book getBookDetail(Integer bookID);
	/**
	 * 输入订单细节
	 **/
	void insertDetail(String loginname,String bookname,Double price,Integer count);
}
