<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <a href="index.jsp" class="btn btn-light btn-block">
                    <i class="fas fa-arrow-left"></i>
                    Regresar a inicio
                </a>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i>
                    Guardar modificación
                </button>
            </div>
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&id=${producto.id}" class="btn btn-block"></a>
                    <i class="fas fa-trash"></i>
                    Eliminar producto
                </a>
            </div>
        </div>
    </div>
</section>
