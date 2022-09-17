
import DAO.CarteraDAO;
import DAO.carteras;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CarteraServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = "";
        opcion = request.getParameter("opcion");
        if (opcion.equals("RegresarDeRegistro"))
        {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else if (opcion.equals("RegresarDeConsulta"))
        {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else if (opcion.equals("EntrarAJSPlistar"))
        {
           String BUSCAR = "0";
            CarteraDAO objRegionDAO = new CarteraDAO();
             ArrayList listarBusq = objRegionDAO.ListarRegion(BUSCAR);
            ArrayList listarCarteras = objRegionDAO.ListarCarteras();
            ArrayList listaTiposCarte = objRegionDAO.ListarTipos();
            request.setAttribute("listarCarteras", listarCarteras);
            request.setAttribute("listatiposCartera", listaTiposCarte);
            request.getRequestDispatcher("/consultaCarteraManual.jsp").forward(request, response);

        } else if (opcion.equals("COMBOXBUSCAR"))
        {
            String BUSCAR = request.getParameter("txttipocartera");
            System.out.println(BUSCAR);
            request.setAttribute("BUSCAR", BUSCAR);
            CarteraDAO objRegionDAO = new CarteraDAO();

            ArrayList listarBusq = objRegionDAO.ListarRegion(BUSCAR);
            request.setAttribute("listarCarteras", listarBusq);

            ArrayList listaTiposCarte = objRegionDAO.ListarTipos();
            request.setAttribute("listatiposCartera", listaTiposCarte);
            request.getRequestDispatcher("/consultaCarteraManual.jsp").forward(request, response);

           
        } else if (opcion.equals("EntraraJSPRegistro"))
        {
            CarteraDAO objRegionDAO = new CarteraDAO();
            ArrayList listartipos = objRegionDAO.ListarTipos();
            request.setAttribute("listartipos", listartipos);
            request.getRequestDispatcher("/registrarCarteraManual.jsp").forward(request, response);
            
            
        } else if (opcion.equals("GRABAR"))
        {
            CarteraDAO objRegionDAO = new CarteraDAO();
            int codigomayor = Integer.parseInt(objRegionDAO.NumerosDAO());
            System.out.println("NUMERO MAYOR: " + codigomayor);
            String descripcion = "", fechadia = "", fechames = "", fechaano = "", fechatotal = "";
            int codigo = codigomayor + 1, tipo = 0;
            String mensaje = "", estado1 = "1";
            double precio = 0;
            descripcion = request.getParameter("txtdescripcion");
            tipo = Integer.parseInt(request.getParameter("txttipocartera"));
            fechadia = request.getParameter("txtfechadia");
            fechames = request.getParameter("txtfechames");
            fechaano = request.getParameter("txtfechaano");
            fechatotal = fechadia + "/" + fechames + "/" + fechaano;
            precio = Double.parseDouble(request.getParameter("txtprecio"));
            carteras objRegionBean = new carteras();
            objRegionBean.setCODCARTERA(codigo);
            objRegionBean.setNOMCARTERA(descripcion);
            objRegionBean.setPRECIO(precio);
            objRegionBean.setFECHA(fechatotal);
            objRegionBean.setCODTIPOCARTERA(tipo);
            int estado = objRegionDAO.InsertarRegion(objRegionBean);
            if (estado == 1)
            {
                mensaje = "Se Grabo El Registro Satisfactoriamente";
            } else
            {
                mensaje = "Registro no insertado";
            }
            request.setAttribute("mensaje", mensaje);
            ArrayList listartipos = objRegionDAO.ListarTipos();
            request.setAttribute("listartipos", listartipos);
            request.getRequestDispatcher("/registrarCarteraManual.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
