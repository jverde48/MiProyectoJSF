<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulario de ingreso</title>
</head>
<body>
<f:view>
	<center><h1>Acceso a usuarios</h1>
		<h:form>
			<h:panelGrid columns="2">
				<!-- propiedades de la clase LoginBean -->
				<h:outputLabel value="Usuario"></h:outputLabel>
				<h:inputText value="#{login.user}"></h:inputText><!-- llama a setUser de la clase LoginBean-->
			
				<h:outputLabel value="Contraseña"></h:outputLabel>
				<h:inputText value="#{login.password}"></h:inputText><!-- llama a setPassword de la clase LoginBean-->			
				<!-- fin propiedades de la clase LoginBean -->
				<br/>
				<h:commandButton action="#{login.validarUsuario}" value="Aceptar"></h:commandButton><!-- metodo que valida al usuario en la clase LoginBean -->			
			</h:panelGrid>
		</h:form>
	</center>	
</f:view>
</body>
</html>