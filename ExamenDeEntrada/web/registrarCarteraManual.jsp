

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link   href="<c:url value ="/css/screen.css"/>"  rel="stylesheet"  type="text/css"   >
        <title>VENTANA DE  REGISTRO</title>
        <script type="text/javascript">
            
            function cargarFoco() {

                document.form.txtdescripcion.focus();

            }

            function regresar() {
                document.form.action = "<c:url value ="/CarteraServlet"/>";
                document.form.method = "GET";
                document.form.opcion.value = "RegresarDeRegistro";
                document.form.submit();
            }

            function  validarfecha(dia, mes, ano) {

                if (dia.length == 0 || mes.length == 0 || ano.length == 0) {
                    return    0;

                } else {
                    return    5;
                }
            }

            function guardar() {
                var txtdescripcion1 = document.form.txtdescripcion.value;
                var txttipocartera1 = document.form.txttipocartera.value;
                var txtprecio1 = document.form.txtprecio.value;

                var txtfechadia1 = document.form.txtfechadia.value;
                var txtfechames1 = document.form.txtfechames.value;
                var txtfechaano1 = document.form.txtfechaano.value;

                if (txtdescripcion1.length == 0 &&
                        txttipocartera1.length == 0 &&
                        txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                    alert("Ingrese Todos los campos");
                    document.form.txtdescripcion.focus();
                    return;
                } else {
                    if (txtdescripcion1.length == 0 &&
                            txttipocartera1.length != 0 &&
                            txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                        alert("Ingrese la descripcion por favor");
                        document.form.txtdescripcion.focus();
                        return;

                    } else {
                        if (txtdescripcion1.length != 0 &&
                                txttipocartera1.length == 0 &&
                                txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                            alert("Ingrese el Tipo favor");
                            document.form.txttipocartera.focus();
                            return;

                        } else {
                            if (txtdescripcion1.length != 0 &&
                                    txttipocartera1.length != 0 &&
                                    txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                alert("Ingrese el Precio  favor");
                                document.form.txtprecio.focus();
                                return;

                            } else {
                                if (txtdescripcion1.length != 0 &&
                                        txttipocartera1.length != 0 &&
                                        txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {

                                    if (txtfechadia1.length == 0 &&
                                            txtfechames1.length == 0 &&
                                            txtfechaano1.length == 0) {

                                        alert("Ingrese Todos los campos de fecha");
                                        document.form.txtfechadia.focus();
                                        return;
                                    } else {

                                        if (txtfechadia1.length == 0 &&
                                                txtfechames1.length != 0 &&
                                                txtfechaano1.length != 0) {

                                            alert("Ingrese el dia por favor");
                                            document.form.txtfechadia.focus();
                                            return;
                                        } else {
                                            if (txtfechadia1.length != 0 &&
                                                    txtfechames1.length == 0 &&
                                                    txtfechaano1.length != 0) {

                                                alert("Ingrese el mes por favor");
                                                document.form.txtfechames.focus();
                                                return;
                                            } else {
                                                if (txtfechadia1.length != 0 &&
                                                        txtfechames1.length != 0 &&
                                                        txtfechaano1.length == 0) {

                                                    alert("Ingrese el a&ntilde;o por favor");
                                                    document.form.txtfechaano.focus();
                                                    return;
                                                } else {

                                                    if (txtfechadia1.length == 0 &&
                                                            txtfechames1.length == 0 &&
                                                            txtfechaano1.length != 0) {

                                                        alert("Ingrese el dia  y mes por favor");
                                                        document.form.txtfechadia.focus();
                                                        return;
                                                    } else {

                                                        if (txtfechadia1.length == 0 &&
                                                                txtfechames1.length != 0 &&
                                                                txtfechaano1.length == 0) {

                                                            alert("Ingrese el dia  y a&ntilde;o por favor");
                                                            document.form.txtfechadia.focus();
                                                            return;
                                                        } else {
                                                            if (txtfechadia1.length != 0 &&
                                                                    txtfechames1.length == 0 &&
                                                                    txtfechaano1.length == 0) {

                                                                alert("Ingrese el mes   y a&ntilde;o por favor");
                                                                document.form.txtfechames.focus();
                                                                return;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                } else {

                                    if (txtdescripcion1.length != 0 &&
                                            txttipocartera1.length == 0 &&
                                            txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                        alert("Ingrese el Tipo y la Fecha   favor");
                                        document.form.txttipocartera.focus();
                                        return;

                                    } else {

                                        if (txtdescripcion1.length != 0 &&
                                                txttipocartera1.length != 0 &&
                                                txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                            alert("Ingrese el Precio y la Fecha   favor");
                                            document.form.txtprecio.focus();
                                            return;

                                        } else {

                                            if (txtdescripcion1.length != 0 &&
                                                    txttipocartera1.length == 0 &&
                                                    txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                                alert("Ingrese el Tipo y el  Precio  favor");
                                                document.form.txttipocartera.focus();
                                                return;

                                            } else {

                                                if (txtdescripcion1.length == 0 &&
                                                        txttipocartera1.length == 0 &&
                                                        txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                                    alert("Ingrese la descripcion y el Tipo");
                                                    document.form.txtdescripcion.focus();
                                                    return;

                                                } else {

                                                    if (txtdescripcion1.length == 0 &&
                                                            txttipocartera1.length != 0 &&
                                                            txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                                        alert("Ingrese la descripcion y la fecha");
                                                        document.form.txtdescripcion.focus();
                                                        return;

                                                    } else {

                                                        if (txtdescripcion1.length == 0 &&
                                                                txttipocartera1.length != 0 &&
                                                                txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                                            alert("Ingrese la descripcion y el Precio");
                                                            document.form.txtdescripcion.focus();
                                                            return;

                                                        } else {

                                                            if (txtdescripcion1.length != 0 &&
                                                                    txttipocartera1.length == 0 &&
                                                                    txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                                                alert("Ingrese el Tipo , Precio y Fecha  por favor");
                                                                document.form.txttipocartera.focus();
                                                                return;

                                                            } else {
                                                                if (txtdescripcion1.length == 0 &&
                                                                        txttipocartera1.length == 0 &&
                                                                        txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                                                    alert("Ingrese la descripcion , Tipo , Precio  por favor");
                                                                    document.form.txtdescripcion.focus();
                                                                    return;

                                                                } else {
                                                                    if (txtdescripcion1.length == 0 &&
                                                                            txttipocartera1.length == 0 &&
                                                                            txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) != 0) {
                                                                        alert("Ingrese la descripcion , Tipo   por favor");
                                                                        document.form.txtdescripcion.focus();
                                                                        return;

                                                                    } else {

                                                                        if (txtdescripcion1.length == 0 &&
                                                                                txttipocartera1.length == 0 &&
                                                                                txtprecio1.length != 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                                                            alert("Ingrese la descripcion , Tipo , Fecha  por favor");
                                                                            document.form.txtdescripcion.focus();
                                                                            return;

                                                                        } else {

                                                                            if (txtdescripcion1.length == 0 &&
                                                                                    txttipocartera1.length != 0 &&
                                                                                    txtprecio1.length == 0 && validarfecha(txtfechadia1, txtfechames1, txtfechaano1) == 0) {
                                                                                alert("Ingrese la descripcion , Precio , Fecha  por favor");
                                                                                document.form.txtdescripcion.focus();
                                                                                return;

                                                                            } else {


                                                                                document.form.action = "<%=request.getContextPath()%>/CarteraServlet";
                                                                                document.form.method = "GET";
                                                                                document.form.opcion.value = "GRABAR";
                                                                                document.form.submit();

                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }


            }


        </script>

    </head>
    <body   onload="cargarFoco()">
    <center>
        <form name="form">
            <input type="hidden"   name="opcion" value="">
            <table class="FondoTabla" border="2" >
                <tr>
                    <td colspan="2" align="center" style="color:white;background-color:#2E468F;font-weight: 600"  class="tituloTabla">Grabar Datos de las Carteras</td>
                </tr>

                <tr>
                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold" >Descripcion :</td>
                    <td  class="tituloFormulario"><textarea name="txtdescripcion"  cols="30" rows="3"  class="input_text"></textarea></td>
                </tr>

                <tr>


                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold">Tipo :</td>
                    <td  class="tituloFormulario"><select name="txttipocartera"  class="input_text" >
                            <option  value="">--------------------------------</option>
                            <c:forEach var="em" items="${listartipos}">


                                <option  value="${em.getCODTIPOCARTERA()}">${em.getTIPOCARTERA2()}</option>

                            </c:forEach>
                        </select>    </td>
                </tr>

                <tr>
                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold">Precio :</td>
                    <td class="tituloFormulario"  ><input name="txtprecio" type="text" size="33" class="input_text"/></td>
                </tr>

                <tr>
                    <td  class="tituloFormulario" style="color:#2E468F;font-weight: bold">Fecha :</td>
                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold"><input name="txtfechadia" type="text"  size="3" maxlength="2" class="input_text"  /> 
                        / 
                        <input name="txtfechames" type="text"  size="3" maxlength="2" class="input_text"   /> 
                        /
                        <input name="txtfechaano" type="text"  size="4" maxlength="4"  class="input_text"  />
                        (dia/mes/a&ntilde;o)</td>
                </tr>

            </table>

            <table  align="center"  class="FondoTabla">
                <tr>
                    <td ><input type="button"  style="color:#2E468F;font-weight: bold" value="Grabar"  class="boton"   onclick="guardar()"/></td>
                    <td><input type="button"  style="color:#2E468F;font-weight: bold" value="Regresar"  class="boton"  onclick="regresar()"/></td>
                </tr>
            </table>

            <table align="center">
                <tr class="tituloFormulario">
                    <td >

                        <c:if test = "${mensaje != null}">
                            <p style="color: red;font-family: Arial;font-size: 19px;"><c:out value = "${mensaje}"/><p>
                            </c:if>

                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>