<%@ page errorPage = "error.jsp" %>
<%@page import="br.com.avaliacaojavajr.webtest.dto.UsuarioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Usuarios</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilo.css">
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<br />
			<div class="container">
				    <div class="row">
				        <div class="col-xs-3">
				            <jsp:include page="menu.jsp"></jsp:include>
				        </div>
				        <div class="col-xs-9">
				            <div class="well" style="min-height: 400px;">
				                <h3>Lista de usuários</h3>
								<table class="table">
									<tr>
										<td>Id</td>
										<td>Nome</td>
										<td>E-mail</td>
										<td>tipo</td>
										<td>Excluir</td>
									</tr>
									<%
									ArrayList<UsuarioDTO> users = (ArrayList<UsuarioDTO>) request.getAttribute("users");
									for (UsuarioDTO user : users){
										%>
										<tr>
											<td><a href="usuario?action=edit&id=<%= user.getId()%>" ><%= user.getId()%></a></td>
											<td><%= user.getNome() %></td>
											<td><%= user.getEmail() %></td>
											<td><%= user.getTipo().getDescricao() %></td>
											<td><a href="usuario?action=delete&id=<%= user.getId()%>" >X</a></td>
										</tr>
										<%
									}
									%>
									<%-- <c:forEach var="user" items="${users}">
									
									</c:forEach> --%>
								</table>
				            </div>
				        </div>
				    </div>
				</div>
		</div>
	</div>
</body>
</html>
