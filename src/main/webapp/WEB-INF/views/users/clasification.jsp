<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="playtogether" tagdir="/WEB-INF/tags"%>

<playtogether:layout pageName="users">
	<body>
		<div class="cardtitle">

			<h1>
				<strong>Top 10 usuarios de PlayTogether </strong>
			</h1>

			<br />
		</div>
		<h1>
			Tu posición:
			<c:out value="${posicion}" />º
		</h1>
		<h1>
			Tienes
			<c:out value="${puntos}" />
			puntos
		</h1>
		<div class="cardlist">
			<table class="table ">
				<thead>
					<tr class="rowtable">
						<th class="guiz-awards-header-title" style="width: 20%;">Usuario</th>
						<th class="guiz-awards-header-title" style="width: 20%;">Puntos</th>
						<th class="guiz-awards-header-title" style="width: 20 !important%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${topUsuarios}" var="usuario">
						<tr class="rowtable">
							<td><c:out value="${usuario.user.username}" /></td>
							<td><c:out value="${usuario.puntos}" /></td>
							<td><spring:url value="/usuarios/{usuarioId}"
									var="usuario2Url">
									<spring:param name="usuarioId" value="${usuario.id}" />

								</spring:url>
								<div class="botoncito">
									<a class="" href="${fn:escapeXml(usuario2Url)}">Ver
										detalles</a>
								</div></td>

						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</body>
	</html>
</playtogether:layout>