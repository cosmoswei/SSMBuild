import com.wei.pojo.Books;
import com.wei.service.BookService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    public static void main(String[] args) {
        ApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService=(BookService) context.getBean("BookServiceImpl");
        for (Books books : bookService.qureyAllBook()) {
            System.out.println(books);
        }
    }
}
