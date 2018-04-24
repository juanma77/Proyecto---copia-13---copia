
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form name="frmContacto" method="post" action="enviarCorreo.jsp">
            <table width="500px">
                <tr>
                    <td>
                        <label for="first_name">Nombre: *</label>
                    </td>
                    <td>
                        <input type="text" name="nombre" maxlength="50" size="25">
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <label for="last_name">Apellido: *</label>
                    </td>
                    <td>
                        <input type="text" name="apellido" maxlength="50" size="25">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email">Dirección de E-mail: *</label>
                    </td>
                    <td>
                        <input type="text" name="email" maxlength="80" size="35">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="comments">Comentarios: </label>
                    </td>
                    <td>
                        <textarea name="mensaje" maxlength="500" cols="30" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:right">
                        <input type="submit" value="Enviar">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
