

package DAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class CarteraDAO {

    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<carteras> lista = null;
    carteras objDatosBean = null;

    public ArrayList<carteras> ListarRegion(String BUSCAR) {

        try {
            cn = Conexion.getConexionBD();
            pt = cn.prepareStatement("SELECT cartera.CODCAR,cartera.DESCRIPCAR,tipocartera.NOMBTIPCAR,cartera.PRECIOCAR,cartera.FECHACAR FROM cartera \n"
                    + "INNER JOIN tipocartera ON cartera.CODTIPCAR = tipocartera.CODTIPCAR where  tipocartera.CODTIPCAR LIKE '%" + BUSCAR + "%'");
            rs = pt.executeQuery();
            lista = new ArrayList<carteras>();
            while (rs.next()) {
                objDatosBean = new carteras();
                objDatosBean.setCODCARTERA(rs.getInt(1));
                objDatosBean.setNOMCARTERA(rs.getString(2));
                objDatosBean.setTIPOCARTERA(rs.getString(3));
                objDatosBean.setPRECIO(rs.getDouble(4));
                objDatosBean.setFECHA(rs.getString(5));
                lista.add(objDatosBean);
            }

        } catch (Exception e) {
        }
        return lista;
    }

    public ArrayList<carteras> ListarCarteras() {

        try {
            cn = Conexion.getConexionBD();
            pt = cn.prepareStatement("SELECT cartera.CODCAR,cartera.DESCRIPCAR,tipocartera.NOMBTIPCAR,cartera.PRECIOCAR,cartera.FECHACAR FROM cartera \n"
                    + "INNER JOIN tipocartera ON cartera.CODTIPCAR = tipocartera.CODTIPCAR where  tipocartera.CODTIPCAR");
            rs = pt.executeQuery();
            lista = new ArrayList<carteras>();
            while (rs.next()) {
                objDatosBean = new carteras();
                objDatosBean.setCODCARTERA(rs.getInt(1));
                objDatosBean.setNOMCARTERA(rs.getString(2));
                objDatosBean.setTIPOCARTERA(rs.getString(3));
                objDatosBean.setPRECIO(rs.getDouble(4));
                objDatosBean.setFECHA(rs.getString(5));
               
                lista.add(objDatosBean);
            }

        } catch (Exception e) {
        }
        return lista;
    }
    
     public ArrayList<carteras> ListarTipos() {

        try {
            cn = Conexion.getConexionBD();
            pt = cn.prepareStatement("SELECT * from tipocartera ");
            rs = pt.executeQuery();
            lista = new ArrayList<carteras>();
            while (rs.next()) {
                objDatosBean = new carteras();
                objDatosBean.setCODTIPOCARTERA(rs.getInt(1));
                objDatosBean.setTIPOCARTERA2(rs.getString(2));
               
               
                lista.add(objDatosBean);
            }

        } catch (Exception e) {
        }
        return lista;
    }

    public int InsertarRegion(carteras objRegionBean) {
        int estado = 0;
        try {
            cn = Conexion.getConexionBD();
            pt = cn.prepareStatement("insert into cartera(CODCAR,DESCRIPCAR,PRECIOCAR,FECHACAR,CODTIPCAR) VALUES(?,?,?,?,?);");
            pt.setInt(1, objRegionBean.getCODCARTERA());
            pt.setString(2, objRegionBean.getNOMCARTERA());
            pt.setDouble(3, objRegionBean.getPRECIO());
            pt.setString(4, objRegionBean.getFECHA());
            pt.setInt(5, objRegionBean.getCODTIPOCARTERA());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        return estado;
    }
public String NumerosDAO() {
        String c = null;
        try {
            cn = Conexion.getConexionBD();
            pt = cn.prepareStatement("select max(CODCAR) from cartera");

            rs = pt.executeQuery();

            if (rs.next()) {
                c = rs.getString(1);
            }
            pt.close();
            rs.close();
            cn.close();
            return c;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

}
