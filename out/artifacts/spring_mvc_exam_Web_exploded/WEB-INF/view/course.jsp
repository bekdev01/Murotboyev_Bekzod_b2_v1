<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Spring Web MVC project</title>
</head>
<body>

<div class="container m-5 ">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Info</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty courses}">
                    <c:forEach items="${courses}" var="course">
                        <tr>
                            <td>${course.courseNumber}</td>
                            <td>${course.courseName}</td>
                            <td>${course.courseInfo}</td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 offset-2 text-right">
            <a href="/add-course-page" class="btn btn-outline-info ">ADD COURSE</a>
        </div>
    </div>
</div>

</body>
</html>



