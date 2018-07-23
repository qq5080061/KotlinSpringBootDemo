<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <title>Demo</title>
</head>
<body>
<table border="2">
  <tr>
    <th>ID</th>
    <th>名称</th>
  </tr>
  <c:forEach items="${users}" var="item" varStatus="status">
    <tr>
      <td>${item.id}</td>
      <td>${item.name}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
