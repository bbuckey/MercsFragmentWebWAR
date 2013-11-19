<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title> Add Merc</title>
</head>
<body>
<h2>Player Merc Mangement Screen:</h2>

<form:form method="post" commandName="playerMerc">

<h3>Mercenarys</h3>
<c:if  test="${!empty mercList}">
<table class="data">
<tr>
    <th>Mercenary Name</th>
    <th>Hit Points</th>
    <th>Attack</th>
    <th>Defense</th>
    <th>Action</th>
</tr>
<c:forEach items="${mercList}" var="merc">
    <tr>
        <td>${merc.mercName}</td>
        <td>${merc.hp}</td>
        <td>${merc.atk}</td>
        <td>${merc.def}</td>
        <td><a href="add/${player.id}/${merc.id}">Add Merc To Player</a></td>
    </tr>
</c:forEach>
</table>
</c:if>


<h3>Players</h3>
<c:if  test="${player !=  null}">
<table class="data">
<tr>
    <th>Player Name</th>
    <th>Exp</th>
    <th>Gold</th>
    <th>Cash</th>
    <th>Last Cach Time</th>
</tr>
    <tr>
        <td>${player.playerName}</td>
        <td>${player.exp}</td>
        <td>${player.gold}</td>
        <td>${player.cash}</td>
        <td>${player.lastCashTime}</td>
    </tr>
</table>
</c:if>


  <br></br>
  <td><a href="">Home</a></td>
</form:form>  
</body>
</html>