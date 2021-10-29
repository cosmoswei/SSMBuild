<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

        <%--前端传递隐藏域--%>
        <input type="hidden" name="bookId" value="${QBook.bookId}">
        <div class="from-group">
            <label for="bkname">书籍名称</label>
            <input type="text" name="bookName" class="from-control" id="bkname" value="${QBook.bookName}" required>
        </div>
        <div class="from-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="from-control" value="${QBook.bookCounts}" equired>
        </div>
        <div class="from-group">
            <label>书籍描述</label>
            <input type="text" name="detail" class="from-control" value="${QBook.detail}" required>
        </div>
        <div class="from-group">
            <input type="submit" class="btn btn-primary" value="修改">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">返回</a>
        </div>
    </form>
</div>
</body>
</html>
