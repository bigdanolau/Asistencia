﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Asistencia.Models.LocalPasswordModel>" %>

<h3>Cambiar contraseña</h3>

<% using (Html.BeginForm("Manage", "Account")) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary() %>

    <fieldset>
        <legend>Formulario de cambio de contraseña</legend>
        <ol>
            <li>
                <%: Html.LabelFor(m => m.OldPassword) %>
                <%: Html.PasswordFor(m => m.OldPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.NewPassword) %>
                <%: Html.PasswordFor(m => m.NewPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
            </li>
        </ol>
        <input type="submit" value="Cambiar contraseña" />
    </fieldset>
<% } %>
