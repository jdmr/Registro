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
        <title>Bienvenido</title>
    </head>
    <body>
        <h1><h:outputText value="Bienvenido" /></h1>
        <h:form>
            <h:panelGrid columns="2">
                <h:column>
                    <h:outputText value="Usuario" />
                </h:column>
                <h:column>
                    <h:outputText id="usuario" value="#{RegistroController.registro.usuario}" />
                </h:column>
                <h:column>
                    <h:outputText value="Contraseña" />
                </h:column>
                <h:column>
                    <h:outputText id="contrasena" value="#{RegistroController.registro.contrasena}" />
                </h:column>
                <h:column>
                    <h:outputText value="Nombre" />
                </h:column>
                <h:column>
                    <h:outputText id="nombre" value="#{RegistroController.registro.nombre}" />
                </h:column>
                <h:column>
                    <h:outputText value="Apellido" />
                </h:column>
                <h:column>
                    <h:outputText id="apellido" value="#{RegistroController.registro.apellido}" />
                </h:column>
                <h:column>
                    <h:outputText value="Fecha de Nacimiento" />
                </h:column>
                <h:column>
                    <h:outputText id="fechaNacimiento" value="#{RegistroController.registro.fechaNacimiento}" />
                </h:column>
            </h:panelGrid>
            <h:commandButton action="#{RegistroController.edita}" value="Editar" />
            <h:commandButton action="#{RegistroController.inicio}" value="Inicio" />
        </h:form>
    </body>
</html>
</f:view>
