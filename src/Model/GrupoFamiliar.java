package Model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class GrupoFamiliar {

    private int id;
    private String nombres;
    private String apellidos;
    private String direccion;
    private LocalDateTime fechacreacion;
    private LocalDateTime fechamodificacion;

    private Rol idrol;
    private Funcionario idfuncionario;

    public GrupoFamiliar() {
    }

    public GrupoFamiliar(int id, String nombres, String apellidos, String direccion, LocalDateTime fechacreacion, LocalDateTime fechamodificacion, Rol idrol, Funcionario idfuncionario) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.fechacreacion = fechacreacion;
        this.fechamodificacion = fechamodificacion;
        this.idrol = idrol;
        this.idfuncionario = idfuncionario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellido() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public LocalDateTime getFechacreacion() {
        return fechacreacion;
    }

    public void setFechacreacion(LocalDateTime fechacreacion) {
        this.fechacreacion = fechacreacion;
    }

    public LocalDateTime getFechamodificacion() {
        return fechamodificacion;
    }

    public void setFechamodificacion(LocalDateTime fechamodificacion) {
        this.fechamodificacion = fechamodificacion;
    }

    public Rol getIdrol() {
        return idrol;
    }

    public void setIdrol(Rol idrol) {
        this.idrol = idrol;
    }

    public Funcionario getIdfuncionario() {
        return idfuncionario;
    }

    public void setIdfuncionario(Funcionario idfuncionario) {
        this.idfuncionario = idfuncionario;
    }
}
