<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示界面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表：显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">增加书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">全部书籍书籍</a>
            </div>

            <div class="col-md-8 column">
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post"
                      style="float: right">
                    <span style="color: red; font-weight:bold">${error}</span>
                    <input type="text" name="queryBookName" class="form-control" placeholder="输入书名查询">
                    <input type="submit" class="btn btn-primary" value="查询">
                </form>
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook2" method="post"
                      style="float: right">
                    <span style="color: red; font-weight:bold">${error}</span>
                    <input type="text" name="queryBookID" class="form-control" placeholder="输入编号查询">
                    <input type="submit" class="btn btn-primary" value="查询">
                </form>
            </div>

        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-spriped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍描述</th>
                    <th>书籍操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a class="btn btn-primary"
                               href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookId}">修改</a>
                            &nbsp;|&nbsp;
                            <a class="btn btn-primary"
                               href="${pageContext.request.contextPath}/book/deleteBook/${book.bookId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
