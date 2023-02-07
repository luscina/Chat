<%--
  Created by IntelliJ IDEA.
  User: inzsl
  Date: 06.02.2023
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Nowy czat</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
    <header>Witaj na czacie</header>
    <p>Zostaw swoją wiadomość</p>
    <main>
        <c:if test="${not empty messageHistory}">
            <c:forEach var="message" items="${messageHistory}">
                <ul>
                    <c:out value="${message}"></c:out>
                </ul>
            </c:forEach>
        </c:if>
        <c:if test="${empty messageHistory}">
            <p>Brak wiadomości - napisz coś!</p>
        </c:if>
        <form action="" method="post">
         <textarea name="message" placeholder="Twoja wiadomość" rows="5" required></textarea>
         <textarea name="author" placeholder="Twój nick" required></textarea>
         <button>Wyślij</button>
        </form>
    </main>
</body>
</html>
