<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link   href="<%=request.getContextPath()%>/css/screen.css"  rel="stylesheet"  type="text/css"   >
        <title>Documento sin t&iacute;tulo</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript">

            function regresar() {
                document.form.action = "<c:url value ="/CarteraServlet"/>";
                document.form.method = "GET";
                document.form.opcion.value = "RegresarDeConsulta";
                document.form.submit();
            }


            function buscar() {
                var txttipocartera1 = document.form.txttipocartera.value;


                if (txttipocartera1.length == 0) {
                    alert("Elige el tipo de Cartera por Favor");
                    document.form.txttipocartera.focus();
                    return;
                } else {
                    document.form.action = "<c:url value ="/CarteraServlet"/>";
                    document.form.method = "GET";
                    document.form.opcion.value = "COMBOXBUSCAR";

                    document.form.submit();

                }

            }
            $(function () {
                $('.FondoTabla').click(function (e) {
                    if ($(this).hasClass('row-selected')) {
                        $(this).addClass('other-clic')
                    } else {
                        cleanTr()
                        $(this).addClass('row-selected')
                    }
                })


                function cleanTr() {
                    $('.row-selected').each(function (index, element) {
                        $(element).removeClass('row-selected')
                        $(element).removeClass('other-clic')
                    })
                }
            })

        </script>

    </head>

    <body>

        <form name="form">
            <input type="hidden"   name="opcion" value="">

            <table  align="center"  border="2" class="FondoTabla" >
                <tr>
                    <td colspan="5"  style="color:white;background-color:#2E468F;font-weight: 600" class="tituloTabla">Listado de Carteras Hechas a Mano</td>
                </tr>
                <tr>

                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold">Tipo :</td>
                    <td  class="tituloFormulario">
                        <select name="txttipocartera"  class="input_text" >

                            <option  value=""  selected >------------------------</option>

                           <c:forEach var="em" items="${listatiposCartera}">
                          
                            <option  value="${em.getCODTIPOCARTERA()}">${em.getTIPOCARTERA2()}</option>

                           </c:forEach>
                        </select>    </td>
                </tr>
                <tr>
                    <td colspan="3"  align="center">
                        <input type="button"  style="color:#2E468F;font-weight: bold" value="Buscar"  class="boton" 
                               onclick="buscar()"/>
                    </td>
                </tr>

            </table >
            <table    align="center" border="2">
                <tr style="color:white;background-color:#2E468F;font-weight: 600" >
                    <td  class="tituloTabla">C&oacute;digo Cartera   </td>
                    <td class="tituloTabla">Descripcion</td>
                    <td class="tituloTabla">Tipo  Cartera</td>
                    <td class="tituloTabla">Precio</td>
                    <td class="tituloTabla">Fecha de Registro</td>
                </tr>
 
                <c:forEach var="em" items="${listarCarteras}">
                <tr class="FondoTabla" >

                    <td>${em.getCODCARTERA()}</td>
                    <td>${em.getNOMCARTERA()}</td>
                    <td>${em.getTIPOCARTERA()}</td>
                    <td>${em.getPRECIO()}</td>
                    <td>${em.getFECHA()}</td>

                </tr>
                </c:forEach>
                <tr>
                    <td colspan="5"  align="center">
                        <input type="button" style="color:#2E468F;font-weight: bold" 
                               value="Regresar"  class="boton"   onclick="regresar()"/>
                    </td>
                </tr>

            </table >


        </form>
    </body>
</html>

