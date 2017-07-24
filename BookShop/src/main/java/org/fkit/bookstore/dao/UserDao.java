package org.fkit.bookstore.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.fkit.bookstore.dao.provider.UserDynaSqlProvider;
import org.fkit.bookstore.domain.User;
import static org.fkit.bookstore.util.common.BookstoreConstants.USERTABLE;

public interface UserDao {
	//根据用户名和密码查询用户
	@Select("select * from "+ USERTABLE +" where loginname=#{loginname} and password=#{password}")
	User selectByUsernameAndPassword(
			@Param("loginname")String loginname,
			@Param("password")String password);
	//根据电话和电子邮件查询用户
	@Select("select password from "+ USERTABLE +" where loginname=#{loginname} and phonenumber=#{phonenumber} and email=#{email}")
	User selectByPhonenumberAndEmail(
			@Param("loginname")String loginname,
			@Param("phonenumber")String phonenumber,
			@Param("email")String email);
	//根据userID查询用户
	@Select("select * from "+USERTABLE+" where userID=#{userID}")
	User selectByUserID(Integer userID);
	//根据userID删除用户
	@Delete("delete from"+USERTABLE+"where userID=#{userID}")
	User deleteByUserID(Integer userID);
	//动态修改用户
	@SelectProvider(type=UserDynaSqlProvider.class,method="updateUser")
	void update(User user);
	//动态查询
//	@SelectProvider(type=UserDynaSqlProvider.class,method="selectWhitParam")
//	List<User> selectByPage(Map<String,Object> params);
	//根据参数查询用户总数
	@SelectProvider(type=UserDynaSqlProvider.class,method="count")
	Integer count(Map<String,Object> params);
	//动态插入用户
	@SelectProvider(type=UserDynaSqlProvider.class,method="insertUser")
	void save(User user);
}
