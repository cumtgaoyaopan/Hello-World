package org.fkit.bookstore.domain;

import java.io.Serializable;

public class Order implements Serializable{
	private Integer orderID;//订单ID
	//与User里的用户ID关联
	private User userID;//用户ID
	private String book;
	private Integer count;//数量
	//与Book里的书籍ID关联
	private Book bookID;//书籍ID
	//无参数构造器
		public Order(){
			super();
		}
		//getter和setter方法
	public Integer getOrderID() {
		return orderID;
	}
	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}
	public User getUserID() {
		return userID;
	}
	public void setUserID(User userID) {
		this.userID = userID;
	}
	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Book getBookID() {
		return bookID;
	}
	public void setBookID(Book bookID) {
		this.bookID = bookID;
	}
	
	
}
