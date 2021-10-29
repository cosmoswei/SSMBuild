package com.wei.service;

import com.wei.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Books books);

    //编号查询一本书
    Books qureyBookById(int id);

    //查询所有书
    List<Books> qureyAllBook();

    //书名查询一本书
    Books queryBookByName(String bookName);
}
