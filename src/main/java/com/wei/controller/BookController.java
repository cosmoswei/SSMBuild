package com.wei.controller;

import com.wei.pojo.Books;
import com.wei.service.BookService;
import com.wei.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = bookService.qureyAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPage() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        System.err.println("addBook=" + books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向到@RequestMapping("/allBook")请求
    }

    @RequestMapping("/toUpdate")
    public String toUpdateBook(int id, Model model) {
        Books books = bookService.qureyBookById(id);
        model.addAttribute("QBook", books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        //      System.out.println("updateboo=" + books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
//        System.out.println("queryBookName=" + queryBookName);
        Books books = bookService.queryBookByName(queryBookName);
//        System.out.println("book=" + books);
        List<Books> list = new ArrayList<>();
        list.add(books);
        if (books == null) {
            list = bookService.qureyAllBook();
            model.addAttribute("error", "未查到！");
        }
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/queryBook2")
    public String queryBook(int queryBookID, Model model) {
        System.out.println("queryBookName=" + queryBookID);
        Books books = bookService.qureyBookById(queryBookID);
        System.out.println("book=" + books);
        List<Books> list = new ArrayList<>();
        list.add(books);
        if (books == null) {
            list = bookService.qureyAllBook();
            model.addAttribute("error", "未查到！");
        }
        model.addAttribute("list", list);
        return "allBook";
    }
}
