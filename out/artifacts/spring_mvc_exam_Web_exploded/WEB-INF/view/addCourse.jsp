
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>

<div class="container m-5">
    <div class="row m-2">
        <div class="col-md-8 offset-2">
            <div class="card">
                <div class="card-header">
                    <h1>ADD COURSE</h1>
                </div>
                <div class="card-body">
                    <form action="/add-course" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="COURSE NAME" name="courseName">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="COURSE INFO" name="courseInfo">
                        </div>
                        <button class="btn btn-primary">ADD</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-8 offset-2 text-right">
            <a href="/course" class="btn btn-outline-info">COURSE</a>
        </div>
    </div>
</div>

</body>
</html>
