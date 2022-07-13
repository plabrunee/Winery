
package web;

import datos.LibreriaDAO;
import entidades.Productos;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.PrintWriter;
    
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        List<Productos> productos = new LibreriaDAO().findAll();
        productos.forEach(System.out::println);
        req.setAttribute("pepe", productos);
        req.setAttribute("cantidadProductos", calcularCantidad(productos));
        req.setAttribute("importeTotal", calcularImporte(productos));
        req.getRequestDispatcher("productos.jsp").forward(req, res);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        
        String accion = req.getParameter("accion");
        
//        if (accion != null) {
//            switch(accion) {
//                case "insertar":
//                    guardarProducto(req, res);
//                    break;
//                    
//                default:
//                    accionDefault( req, res);
//                    break;
//                    
//            }
//        }

        String marca = req.getParameter("marca");
        String tipo = req.getParameter("tipo");
        int anio = Integer.parseInt(req.getParameter("anio"));
        int stock = Integer.parseInt(req.getParameter("stock"));
        Double precio = Double.parseDouble(req.getParameter("precio"));

        res.setContentType("text/html");
        PrintWriter printWriter = res.getWriter();
        printWriter.print("<html>");
        printWriter.print("<body>");
        printWriter.print("<h1>Datos del formulario de alta de productos</h1>");
        printWriter.print("<p> marca :: " + marca + "</p>");
        printWriter.print("<p> tipo :: " + tipo + "</p>");
        printWriter.print("<p> año :: " + anio + "</p>");
//        printWriter.print("<p> stock :: " + stock + "</p>");
        printWriter.print("<p> precio :: " + precio + "</p>");
        printWriter.print("</body>");
        printWriter.print("</html>");
        printWriter.close();

        System.out.println("marca :: " + marca);
        System.out.println("tipo :: " + tipo);
        System.out.println("año :: " + anio);
//        System.out.println("stock :: " + stock);
        System.out.println("precio :: " + precio);
        
    }
    
    private int calcularCantidad( List<Productos> lista) {
        int cantidad = 0;
        
        for (int i = 0; i < lista.size(); i++) {
            cantidad = lista.get(i).getStock();
        }
        
        return cantidad;
    }
    
    private double calcularImporte( List<Productos> lista) {
        double importe = 0;
        
        for (int i = 0; i < lista.size(); i++) {
            importe = lista.get(i).getStock() * lista.get(i).getPrecio();
        }
        
        return importe;
    }
    
    
    private void accionDefault( HttpServletRequest req, HttpServletResponse res) {
        this.doGet(req, res);
    }
    
    private void guardarProducto(HttpServletRequest req, HttpServletResponse res) throws SQLException {
        
        String marca = req.getParameter("marca");
        String tipo = req.getParameter("tipo");
        int anio = Integer.parseInt(req.getParameter("anio"));
        int stock = Integer.parseInt(req.getParameter("stock"));
        double precio = Double.parseDouble(req.getParameter("precio"));
        
        Productos producto = new Productos( marca, tipo, anio, stock, precio);
        
        int regMod = new LibreriaDAO().create(producto);
        System.out.println("Insertados: "+ regMod + " producto/s.");
        
        accionDefault( req, res);
        
    }
            
    
}
