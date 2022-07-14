
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_AR"/>
<section>
    <div>
        <div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-7">
                    <div>
                        <!-- <h4>Listado de productos</h4> -->
                    </div>
                    <table class="table-responsive sm">
                        <table class="table table-sm table-striped table-hover table-bordered caption-top">
                            <caption><h3>Listado de productos</h3></caption>
                            <thead class="table-dark">
                                <tr>
                                    <th class="text-center">Id</th>
                                    <th class="text-center">Marca</th>
                                    <th class="text-center">Tipo</th>
                                    <th class="text-center">Año</th>
                                    <th class="text-center">Stock</th>
                                    <th class="text-center">Precio</th>
                                    <th class="text-center">Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="producto" items="${pepe}" varStatus="status">
                                    <tr>
<!--                                    <td  class="text-center">${producto.id}</td>-->
                                        <td>${status.count}</td>
                                        <td>${producto.marca}</td>
                                        <td>${producto.tipo}</td>
                                        <td class="text-center">${producto.anio}</td>
                                        <td class="text-end">${producto.stock}</td>
                                        <td class="text-end"><fmt:formatNumber value="${producto.precio}" type="currency"/></td>
                                        
                                        <!--Completar href cuando esté terminado JSP EDITAR -->
                                        <td class="text-center">
                                            <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&id=${producto.id}" class="btn btn-secondary">
                                                <i class="fas fa-angle-double-right"></i>
                                                Editar
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </table>
                </div>
                <div class="col-md-4">
                    <div class="card text-center bg-danger text-white mb-3">
                        <div class="card-body">
                            <h3>Cantidad de productos</h3>
                            <h4 class="display-4">
                                ${cantidadProductos}
                            </h4>
                        </div>
                    </div>

                    <div class="card text-center bg-success text-white mb-3">
                        <div class="card-body">
                            <h3>Importe total</h3>
                            <h4 class="display-4">
                                <i class="fas fa-book-dead"></i>
                                <fmt:formatNumber value="${importeTotal}" type="currency"/>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/paginas/operaciones/agregarProductos.jsp" />
