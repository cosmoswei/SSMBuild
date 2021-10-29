package com.wei.service;

import com.wei.dao.BookMapper;
import com.wei.pojo.Books;

import java.util.List;

/**
 * @author 21170
 */
public class BookServiceImpl implements BookService {

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }


    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books qureyBookById(int id) {
        return bookMapper.qureyBookById(id);
    }

    @Override
    public List<Books> qureyAllBook() {
        return bookMapper.qureyAllBook();
    }

    @Override
    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
