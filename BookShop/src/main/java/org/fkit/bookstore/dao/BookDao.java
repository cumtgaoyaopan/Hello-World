package org.fkit.bookstore.dao;

import static org.fkit.bookstore.util.common.BookstoreConstants.BOOKTABLE;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.bookstore.domain.Book;

public interface BookDao {
	/**
	 * 查询所有小说书籍
	 * @return 小说书籍对象集合
	 */
	@Select(" select * from "+ BOOKTABLE+" where sortID = 1" )
	List<Book> findAllOneBook();
	/**
	 * 查询所有文学书籍
	 * @return 文学书籍对象集合
	 */
	@Select(" select * from "+ BOOKTABLE+" where sortID = 2" )
	List<Book> findAllTwoBook();
	/**
	 * 查询所有历史书籍
	 * @return 历史书籍对象集合
	 */
	@Select(" select * from "+ BOOKTABLE+" where sortID = 3" )
	List<Book> findAllThreeBook();
	/**
	 * 查询所有科普书籍
	 * @return 科普书籍对象集合
	 */
	@Select(" select * from "+ BOOKTABLE+" where sortID = 4" )
	List<Book> findAllFourBook();
	/**
	 * 查询选择输送详情书籍
	 * @retuen  传送书籍对象集合
	 */
	@Select(" select * from "+ BOOKTABLE+" where bookID = #{bookID}" )
	Book findBookDetail(Integer bookID);
}
