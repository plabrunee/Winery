/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package datos;

import static datos.Conexion.*;
import entidades.Productos;
import java.sql.*;
import java.util.*;

/**
 *
 * @author plabrunee
 */
public class LibreriaDAO {
    
    private static final String SQL_CREATE = "INSERT INTO productos (marca, tipo, anio, stock, precio) VALUES (?, ?, ?, ?, ?);";
    private static final String SQL_READ = "SELECT id, marca, tipo, anio, stock, precio FROM productos;";
    private static final String SQL_UPDATE_PRECIO = "UPDATE productos SET precio = ? WHERE id = ?;";
    private static final String SQL_UPDATE_STOCK = "UPDATE productos SET stock = ? WHERE id = ?;";
    private static final String SQL_DELETE = "DELETE FROM productos WHERE id = ?;";
    private static final String SQL_SELECT_BY_ID = "SELECT id, marca, tipo, anio, stock, precio FROM productos WHERE id = ?;";
    private static final String SQL_SELECT_BY_MARCA = "SELECT id, marca, tipo, anio, stock, precio FROM productos WHERE marca = ?;";
    
    
    public List<Productos> findAll() {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Productos producto = null;
        List<Productos> productos = new ArrayList();
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_READ);
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                
                int id = rs.getInt("id");
                String marca = rs.getString("marca");
                String tipo = rs.getString("tipo");
                int anio = rs.getInt("anio");
                int stock = rs.getInt("stock");
                double precio = rs.getDouble("precio");
                
                producto = new Productos( id, marca, tipo, anio, stock, precio);
                
                productos.add(producto);
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return productos;
        
    }
    
     public Productos findById(int id) {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Productos producto = null;
//        List<Productos> productos = new ArrayList();
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            
            while (rs.next()) {
                
                int id2 = rs.getInt("id");
                String marca = rs.getString("marca");
                String tipo = rs.getString("tipo");
                int anio = rs.getInt("anio");
                int stock = rs.getInt("stock");
                double precio = rs.getDouble("precio");
                
                producto = new Productos( id2, marca, tipo, anio, stock, precio);
                
//                productos.add(producto);
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return producto;
        
    }
    
    public int create(Productos producto) throws SQLException {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_CREATE);
            //stmt.setInt(1, producto.getIdLibro());
            stmt.setString(1, producto.getMarca());
            stmt.setString(2, producto.getTipo());
            stmt.setInt(3, producto.getAnio());
            stmt.setInt(4, producto.getStock());
            stmt.setDouble(5, producto.getPrecio());
            
            registros = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            
            ex.printStackTrace(System.out);
            
        } finally {
            
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
            
        }
        
        return registros;
        
    }
    
    public int updatePrecio (Productos producto) {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_PRECIO);
            stmt.setDouble(1, producto.getPrecio());
            stmt.setInt(2, producto.getId());
            
            registros = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            
            ex.printStackTrace(System.out);
        }
        
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
        
    }
    
    public int updateCopias (Productos producto) {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_STOCK);
            stmt.setInt(1, producto.getStock());
            stmt.setInt(2, producto.getId());
            
            registros = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            
            ex.printStackTrace(System.out);
        }
        
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
        
    }
    
    public int delete (Productos producto) {
        
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try {
            
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, producto.getId());
            
            registros = stmt.executeUpdate();
            
        } catch (SQLException ex) {
            
            ex.printStackTrace(System.out);
            
        }
        finally{
            
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
            
        }
        
        return registros;
        
    }
}
