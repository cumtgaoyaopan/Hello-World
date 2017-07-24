package org.fkit.bookstore.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.fkit.bookstore.domain.Detail;

public interface DetailDao {
	@Insert("insert into tb_detail(loginname,bookname,price,count) values(#{loginname},#{bookname},#{price},#{count})")
	void insertDetail(
		@Param("loginname") String loginname,
		@Param("bookname") String bookname,
		@Param("price") Double price,
		@Param("count") Integer count
		);
}
