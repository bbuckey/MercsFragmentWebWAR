<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Mercenary List And Addtion Page</title>
</head>
<body>
<h2>Mercenary Mangement Screen:</h2>
<form:form method="post" action="player/add" commandName="player">
  
    <table>
    <tr>
        <td><form:label path="playerName"><spring:message code="label.playerName"/></form:label></td>
        <td><form:input path="playerName" /></td>
    </tr>
    <tr>
        <td><form:label path="gold"><spring:message code="label.gold"/></form:label></td>
        <td><form:input path="gold" /></td>
    </tr>
    <tr>
        <td><form:label path="cash"><spring:message code="label.cash"/></form:label></td>
        <td><form:input path="cash" /></td>
    </tr>
    <tr>
        <td><form:label path="exp"><spring:message code="label.exp"/></form:label></td>
        <td><form:input path="exp" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="<spring:message code="label.add"/>"/>
        </td>
    </tr>
</table> 
</form:form>

<h3>Mercenarys</h3>
<c:if  test="${!empty playerList}">
<table class="data">
<tr>
    <th>Player Name</th>
    <th>Exp</th>
    <th>Gold</th>
    <th>Cash</th>
    <th>&amp;amp;nbsp;</th>
</tr>
<c:forEach items="${playerList}" var="player">
    <tr>
        <td>${player.playerName}</td>
        <td>${player.exp}</td>
        <td>${player.gold}</td>
        <td>${player.cash}</td>
        <td><a href="player/delete/${player.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
  
</body>
</html>