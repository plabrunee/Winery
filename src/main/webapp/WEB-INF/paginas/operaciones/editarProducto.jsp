<%-- 
    Document   : libros
    Created on : 30 jun. 2022, 20:05:45
    Author     : plabrunee
--%>

<%-- @page contentType="text/html" pageEncoding="UTF-8"--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <title>Winery</title>
    </head>
    <body>

        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"></jsp:include>
        
        <form action =" ${pageContext.request.contextPath}/ServletControlador?accion=editar&id=${productoMod.id}"
              method="POST" class="was-validated">
                <jsp:include page="/WEB-INF/paginas/comunes/editarNav.jsp"></jsp:include>
                
                
                    <section id="details">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="card-header">
                                        <h4>Editar producto</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="marca">Marca</label>
                                            <input type="text" class="form-control" name="marca" required="" value="${productoMod.marca}">
                                        </div>
                                        <div class="form-group">
                                            <label for="tipo">Tipo</label>
                                            <input type="text" class="form-control" name="tipo" value="${productoMod.tipo}">
                                        </div>
                                        <div class="form-group">
                                            <label for="anio">Año</label>
                                            <input type="number" class="form-control" name="anio" required="" value="${productoMod.anio}">
                                        </div>
                                        <div class="form-group">
                                            <label for="stock">Stock</label>
                                            <input type="number" class="form-control" name="stock" required="" value="${productoMod.stock}">
                                        </div>
                                        <div class="form-group">
                                            <label for="precio">Precio</label>
                                            <input type="currency" class="form-control" name="precio" required="" value="${productoMod.precio}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </section>
        </form>
        
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp"></jsp:include>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/cfa54ce4c1.js" crossorigin="anonymous"></script>
        
    </body>
</html>
