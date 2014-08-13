<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<html>
<head>

    <link href="jquery/jquery-ui.css" rel="stylesheet">
	<script src="jquery/external/jquery/jquery.js"></script>
	<script src="jquery/jquery-ui.js"></script>

</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		Descricao:<br />
		<textarea name="descricao" cols="100" rows="5">${tarefa.descricao}</textarea>
		<br />
		Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : ''} /> <br />
		
		Data da Finalizacao: <br />
		<fmt:formatDate value='${tarefa.dataFinalizacao.time}' pattern='dd/MM/yyyy' var='dataFormatada' />
		<caelum:campoData id="dataFinalizacao" valor="${dataFormatada}" />
		<!--  <input type="text" name="dataFinalizacao" value='<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />' />  -->
		<br />
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>
 
