<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Home page</title>
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
  <main role="main">

          <section class="jumbotron text-center">
              <div class="container">
                  <h1>Its a blog </h1>
                  <p class="lead text-muted">Where you can place, update and remove posts</p>
              </div>
          </section>

      </main>
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
