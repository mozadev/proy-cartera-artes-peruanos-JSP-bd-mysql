

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link   href="<%=request.getContextPath()%>/css/screen.css"  rel="stylesheet"  type="text/css"   >
        <title>VENTANA  PRINCIPAL DE LA EMPRESA  ARTES PERUANOS</title>
        <script> 
             function listar() {
                document.form.action = "<%=request.getContextPath()%>/CarteraServlet";
                document.form.method = "GET";
                document.form.opcion.value = "EntrarAJSPlistar";
                document.form.submit();
                
            }
               function registro() {
                document.form.action = "<%=request.getContextPath()%>/CarteraServlet";
                document.form.method = "GET";
                document.form.opcion.value = "EntraraJSPRegistro";
                document.form.submit();
                
            }
        </script>
    </head>

    <body>
        
    <center>
        <form name="form">
             <input type="hidden"   name="opcion" value="">
        <table  class="FondoTabla" >
            <tr>
                <td>
                    <p><img src="<%=request.getContextPath()%>/img/cartera.jpg" width="205" height="207" /></p>

                </td>
            </tr>
           
            <tr>
                <td  class="tituloFormulario" align="center" >MENU DE OPCIONES </td>
            </tr>
            <tr>
                <td  class="tituloFormulario"   align="center" ><button onclick="registro()">Insertar Datos de Carteras</button></td>
            </tr>
            <tr>
                <td  class="tituloFormulario"  align="center"   ><button  onclick="listar()">Consultar Datos de la Carteras</button></td>
            </tr>

        </table>
        </form>
    </center>
</body>
</html>