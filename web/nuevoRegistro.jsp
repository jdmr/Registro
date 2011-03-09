<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1><h:outputText value="Registro" /></h1>
        <h:form>
            <h:panelGrid columns="2">
                <h:column>
                    <h:outputLabel for="usuario" value="Usuario" />
                </h:column>
                <h:column>
                    <h:inputText id="usuario" value="#{RegistroController.registro.usuario}" />
                </h:column>
                <h:column>
                    <h:outputLabel for="contrasena" value="Contraseña" />
                </h:column>
                <h:column>
                    <h:inputSecret id="contrasena" value="#{RegistroController.registro.contrasena}" />
                </h:column>
                <h:column>
                    <h:outputLabel for="nombre" value="Nombre" />
                </h:column>
                <h:column>
                    <h:inputText id="nombre" value="#{RegistroController.registro.nombre}" />
                </h:column>
                <h:column>
                    <h:outputLabel for="apellido" value="Apellido" />
                </h:column>
                <h:column>
                    <h:inputText id="apellido" value="#{RegistroController.registro.apellido}" />
                </h:column>
                <h:column>
                    <h:outputLabel for="fechaNacimiento" value="Fecha de Nacimiento" />
                </h:column>
                <h:column>
                    <h:inputText id="fechaNacimiento" value="#{RegistroController.registro.fechaNacimiento}" />
                </h:column>
            </h:panelGrid>
            <h:commandButton action="#{RegistroController.crea}" value="Regístrate" rendered="#{!RegistroController.editando}"/>
            <h:commandButton action="#{RegistroController.guarda}" value="Actualízate" rendered="#{RegistroController.editando}"/>
        </h:form>
    </body>
</html>
</f:view>
