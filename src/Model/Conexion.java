package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import Util.Mensajes;

public class Conexion {

    private static final String URL = "jdbc:mysql://localhost:3306/crud_dao_iud";
    private static final String USUARIO = "root";
    private static final String PASSWORD = "";

    private Connection cxn;

    public Conexion() {
        try {
            cxn = DriverManager.getConnection(URL, USUARIO, PASSWORD);
            cxn.createStatement();
        } catch (SQLException ex) {
            Mensajes.mensajeError("Error de conexión", ex.getMessage());
        }
    }

    public Connection getCxn() {
        return cxn;
    }

    public void setCxn(Connection cxn) {
        this.cxn = cxn;
    }
}
