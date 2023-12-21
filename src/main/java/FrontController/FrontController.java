/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package FrontController;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nico
 */
public class FrontController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FrontController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FrontController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       String accion=null;
       TicketDAO ticketDAO=null;
       
       try
       {
           ticketDAO= new TicketDAO();
       }
       catch(ClassNotFoundException e)
       {
           System.out.println(e);
           
       }
       
       RequestDispatcher dispatcher=null;
       accion=request.getParameter("accion");
       if(accion==null||accion.isEmpty())
       {
           dispatcher=request.getRequestDispatcher("conferencia.jsp");
       }
       else if (accion.equals("registrar"))
       {
           dispatcher=request.getRequestDispatcher("comprar-tickets.jsp");
       }
       else if (accion.equals("backoffice"))
       {
           dispatcher=request.getRequestDispatcher("backOffice.jsp");
       }
       else if (accion.equals("volver"))
       {
           dispatcher=request.getRequestDispatcher("conferencia.jsp");
       }
       else if (accion.equals("insert"))
       {
           String nombre=request.getParameter("nombre");
           String apellido=request.getParameter("apellido");
           String mail=request.getParameter("mail");
           int cant=Integer.parseInt(request.getParameter("cant"));
           int categoria=Integer.parseInt(request.getParameter("categoria"));
           
           //por cada categoria el valor
           
           Ticket ticket=new Ticket(0,nombre,apellido,mail,cant,categoria,200);
           ticketDAO.insertarTicket(ticket);
           dispatcher=request.getRequestDispatcher("conferencia.jsp");
       }
       
       dispatcher.forward(request,response);
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
