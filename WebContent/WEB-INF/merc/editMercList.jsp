<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Mercenary List And Addtion Page</title>
</head>
<body>
<h2>Mercenary Mangement Screen:</h2>
<form:form method="post" action="merc/add" commandName="merc">
  
    <table>
    <tr>
        <td><form:label path="mercName"><spring:message code="label.mercname"/></form:label></td>
        <td><form:input path="mercName" /></td>
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

<h3>Mercenarys</h3>
<c:if  test="${!empty mercList}">
<table class="data">
<tr>
    <th>Mercenary Name</th>
    <th>Hit Points</th>
    <th>Attack</th>
    <th>Defense</th>
    <th>&amp;amp;nbsp;</th>
</tr>
<c:forEach items="${mercList}" var="merc">
    <tr>
        <td>${merc.mercName}</td>
        <td>${merc.hp}</td>
        <td>${merc.atk}</td>
        <td>${merc.def}</td>
        <td><a href="merc/delete/${merc.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
  
</body>
</html>