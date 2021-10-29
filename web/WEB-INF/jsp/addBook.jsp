<%--
  Created by IntelliJ IDEA.
  User: 21170
  Date: 2021/3/19/019
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="from-group">
            <label for="bkname">书籍名称</label>
            <input type="text" name="bookName" class="from-control" id="bkname" required>
        </div>
        <div class="from-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="from-control" required>
        </div>
        <div class="from-group">
            <label>书籍描述</label>
            <input type="text" name="detail" class="from-control" required>
        </div>
        <div class="from-group">
            <input type="submit" class="btn btn-primary" value="添加">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">返回</a>
        </div>
    </form>
</div>
</body>
</html>
