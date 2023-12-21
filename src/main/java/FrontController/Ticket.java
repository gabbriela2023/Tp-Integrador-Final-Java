/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package FrontController;

/**
 *
 * @author Nico
 */
public class Ticket {
    private int id;
    private String nombre;
    private String apellido;
    private String mail;
    private int cant;
    private int tipo_ticket;
    private float total_facturado;

    public Ticket(int id, String nombre, String apellido, String mail, int cant, int tipo_ticket, float total_facturado) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.cant = cant;
        this.tipo_ticket = tipo_ticket;
        this.total_facturado = total_facturado;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public int getTipo_ticket() {
        return tipo_ticket;
    }

    public void setTipo_ticket(int tipo_ticket) {
        this.tipo_ticket = tipo_ticket;
    }

    public float getTotal_facturado() {
        return total_facturado;
    }

    public void setTotal_facturado(float total_facturado) {
        this.total_facturado = total_facturado;
    }
    
    
    
}
