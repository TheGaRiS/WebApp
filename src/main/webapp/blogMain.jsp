<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>Blog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
        <h5 class="my-0 mr-md-auto font-weight-normal">${pageContext.request.userPrincipal.name} <a onclick="document.forms['logoutForm'].submit()">Logout</a></h5>
        </c:if>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="/">Home</a>
            <a class="p-2 text-dark" href="/blog">Blog</a>
            <a class="p-2 text-dark" href="/blog/add">Add post</a>
        </nav>
    </div>

<div class = "container mt-5">
    <h1>Blog</h1>
    <div each="el : ${posts}" class="alert alert-info mt-2">
        <h3 text="${el.title}"/>
        <h4 text="'Автор:' + ${el.author}"/>
        <p text="${el.anons}"/>
        <a href="'/blog/' + ${el.id}" class="btn btn-warning">Details</a>
    </div>
</div>

<footer class="text-muted">
              <div class="container">
                  <p class="float-right">
                      <a href="#">To the top</a>
                  </p>
                  <p>Made by TheGaRiS</p>
              </div>
          </footer>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>