<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Mercenary List Page</title>
</head>
<body>
<h2>Mercenary Mangement Screen:</h2>
<form:form method="post" action="weapon/add" commandName="weapon">
  
    <table>
    <tr>
        <td><form:label path="weaponsName"><spring:message code="label.weaponsname"/></form:label></td>
        <td><form:input path="weaponsName" /></td>
    </tr>
    <tr>
        <td><form:label path="hp"><spring:message code="label.hp"/></form:label></td>
        <td><form:input path="hp" /></td>
    </tr>
    <tr>
        <td><form:label path="atk"><spring:message code="label.atk"/></form:label></td>
        <td><form:input path="atk" /></td>
    </tr>
    <tr>
        <td><form:label path="def"><spring:message code="label.def"/></form:label></td>
        <td><form:input path="def" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="<spring:message code="label.add"/>"/>
        </td>
    </tr>
</table> 
</form:form>

<h3>WEapons</h3>
<c:if  test="${!empty weaponsList}">
<table class="data">
<tr>
    <th>Weapons Name</th>
    <th>Hit Points</th>
    <th>Attack</th>
    <th>Defense</th>
    <th>Action</th>
</tr>
<c:forEach items="${weaponsList}" var="wep">
    <tr>
        <td>${wep.weaponsName}</td>
        <td>${wep.hp}</td>
        <td>${wep.atk}</td>
        <td>${wep.def}</td>
        <td><a href="weapon/delete/${wep.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
  <td><a href="">Home</a></td>
</body>
</html>