package org.fkit.bookstore.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.management.RuntimeErrorException;

import org.fkit.bookstore.dao.*;
import org.fkit.bookstore.domain.*;

import org.fkit.bookstore.service.BookstoreService;
//import org.fkit.bookstore.util.tag.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.*;



@Transactional (propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("bookstoreService")
public class BookstoreServiceImpl implements BookstoreService {
	/**
	 * 自动注入持久层Dao对象
	 */
	@Autowired
	private UserDao userDao;
	@Autowired
	private BookDao bookDao;
	@Autowired
	private DetailDao detailDao;
	
	/**********************用户服务接口实现****************************/
	/**
	 * BookstoreServiceImpl接口login方法实现
	 * @see { BookstoreService }
	 */
	@Transactional(readOnly=true)
	@Override
	public User login(String loginname, String password) {
		// TODO Auto-generated method stub
		System.out.println("BookstoreImpl login -- >>");
		return userDao.selectByUsernameAndPassword(loginname, password);
	}
	/**
	 * BookstoreServiceImpl接口login方法实现
	 * @see { BookstoreService }
	 */
	@Transactional(readOnly=true)
	@Override
	public User forget(String loginname,String phonenumber, String email) {
		// TODO Auto-generated method stub
		System.out.println("BookstoreImpl forget -- >>");
		return userDao.selectByPhonenumberAndEmail(loginname,phonenumber, email);
	}
	/**
	 * BookstoreServiceImpl接口findUserByUserID方法实现
	 * @see { BookstoreService }
	 */
	@Transactional(readOnly=true)
	@Override
	public User findUserByUserID(Integer userID) {
		// TODO Auto-generated method stub
		return userDao.selectByUserID(userID);
	}
	/**
	 * BookstoreServiceImpl接口removeUserByUserID方法实现
	 * @see { BookstoreService }
	 */
	@Override
	public void removeUserByUserID(Integer userID) {
		// TODO Auto-generated method stub
		userDao.deleteByUserID(userID);
	}
	/**
	 * BookstoreServiceImpl接口modifyUser方法实现
	 * @see { BookstoreService }
	 */
	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		userDao.update(user);
	}
	/**
	 * BookstoreServiceImpl接口addUser方法实现
	 * @see { BookstoreService }
	 */
	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}
	
	/*************************书籍服务接口实现***************************/
	/**
	 * BookstoreService接口getAllOneBook方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public List<Book> getAllOneBook(){
		return bookDao.findAllOneBook();
	}
	/**
	 * BookstoreService接口getAllTwoBook方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public List<Book> getAllTwoBook(){
		return bookDao.findAllTwoBook();
	}
	/**
	 * BookstoreService接口getAllThreeBook方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public List<Book> getAllThreeBook(){
		return bookDao.findAllThreeBook();
	}
	/**
	 * BookstoreService接口getAllFourBook方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public List<Book> getAllFourBook(){
		return bookDao.findAllFourBook();
	}
	/**
	 * BookstoreService接口getBookDetail方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public Book getBookDetail(Integer bookID) {
		// TODO Auto-generated method stub
		return bookDao.findBookDetail(bookID);
	}
	/**
	 * BookstoreService接口insertDetail方法实现
	 * @see {BookstoreService}
	 */
	@Override
	public void insertDetail(String loginname, String bookname,Double price,Integer count) {
		// TODO Auto-generated method stub
		 detailDao.insertDetail(loginname, bookname,price,count);
	}

	
}
