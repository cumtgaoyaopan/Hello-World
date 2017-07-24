package org.fkit.bookstore.domain;

import java.io.Serializable;

public class Detail implements Serializable{
	private Integer ID;//订单编号
	private User userID;//用户编号
	private String loginname;//用户名
	private Book bookID;//书籍编号
	private String bookname;//书名
	private Double price;//价格
	private Integer count;//数量
	
		//无参数构造器
		public Detail(){
			super();
		}
		//setter和getter方法

		public Integer getID() {
			return ID;
		}

		public void setID(Integer iD) {
			ID = iD;
		}

		public User getUserID() {
			return userID;
		}

		public void setUserID(User userID) {
			this.userID = userID;
		}

		public String getLoginname() {
			return loginname;
		}

		public void setLoginname(String loginname) {
			this.loginname = loginname;
		}

		public Book getBookID() {
			return bookID;
		}

		public void setBookID(Book bookID) {
			this.bookID = bookID;
		}

		public String getBookname() {
			return bookname;
		}

		public void setBookname(String bookname) {
			this.bookname = bookname;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public Integer getCount() {
			return count;
		}

		public void setCount(Integer count) {
			this.count = count;
		}

		@Override
		public String toString() {
			return "Detail [ID=" + ID + ", userID=" + userID + ", loginname=" + loginname + ", bookID=" + bookID
					+ ", bookname=" + bookname + ", price=" + price + ", count=" + count + "]";
		}
	
	
	
}
