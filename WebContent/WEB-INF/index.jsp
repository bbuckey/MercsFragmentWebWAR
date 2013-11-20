<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<body>

<script type="text/javascript">

</script>
<h2>Merc's Links</h2>
<form:form action="player" method="get">
<td><a href="player">Player Page</a></td>

</form:form>

<form:form action="merc" method="get">
<td><a href="merc">Merc Page</a></td>
</form:form>

<form:form action="weapon" method="get">
<td><a href="weapon">Weapons Page</a></td>
</form:form>


</body>
</html>
