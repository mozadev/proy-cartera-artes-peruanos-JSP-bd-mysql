
package DAO;


public class carteras {
    int CODCARTERA;
    String NOMCARTERA;
    String TIPOCARTERA;
    double PRECIO;
    String FECHA;
    int CODTIPOCARTERA;
    String TIPOCARTERA2;

public carteras(){
}

    public carteras(int CODCARTERA, String NOMCARTERA, String TIPOCARTERA, double PRECIO, String FECHA, int CODTIPOCARTERA, String TIPOCARTERA2) {
        this.CODCARTERA = CODCARTERA;
        this.NOMCARTERA = NOMCARTERA;
        this.TIPOCARTERA = TIPOCARTERA;
        this.PRECIO = PRECIO;
        this.FECHA = FECHA;
        this.CODTIPOCARTERA = CODTIPOCARTERA;
        this.TIPOCARTERA2 = TIPOCARTERA2;
    }

    public int getCODCARTERA() {
        return CODCARTERA;
    }

    public void setCODCARTERA(int CODCARTERA) {
        this.CODCARTERA = CODCARTERA;
    }

    public String getNOMCARTERA() {
        return NOMCARTERA;
    }

    public void setNOMCARTERA(String NOMCARTERA) {
        this.NOMCARTERA = NOMCARTERA;
    }

    public String getTIPOCARTERA() {
        return TIPOCARTERA;
    }

    public void setTIPOCARTERA(String TIPOCARTERA) {
        this.TIPOCARTERA = TIPOCARTERA;
    }

    public double getPRECIO() {
        return PRECIO;
    }

    public void setPRECIO(double PRECIO) {
        this.PRECIO = PRECIO;
    }

    public String getFECHA() {
        return FECHA;
    }

    public void setFECHA(String FECHA) {
        this.FECHA = FECHA;
    }

    public int getCODTIPOCARTERA() {
        return CODTIPOCARTERA;
    }

    public void setCODTIPOCARTERA(int CODTIPOCARTERA) {
        this.CODTIPOCARTERA = CODTIPOCARTERA;
    }

    public String getTIPOCARTERA2() {
        return TIPOCARTERA2;
    }

    public void setTIPOCARTERA2(String TIPOCARTERA2) {
        this.TIPOCARTERA2 = TIPOCARTERA2;
    }
    

}
