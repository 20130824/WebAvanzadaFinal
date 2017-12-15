<!DOCTYPE html>
<html>
    <head>

        <title>Carrito de Compra</title>
    </head>
    <body>
        <div class="container" role="main">
            <div class="row">
                <div class="col col-md-12">
                    <h1><i class="fa fa-cart-plus"></i> Productos en el carrito</h1>
                    <br>
                    <g:if test="${flash.message}">
                        <div class="alert alert-info" role="status">${flash.message}</div>
                        <br>
                    </g:if>
                    <g:if test="${flash.error}">
                        <div class="alert alert-danger" role="status">${flash.error}</div>
                        <br>
                    </g:if>

                    <g:if test="${productos.keys.size() > 0}">
                        <div class="row">
                            <form action="/carrito/procesar" method="post">
                                <label for="direccion">Direccion</label>
                                <input id="direccion" type="text" name="direccion" required/>
                                <button type="submit" class="btn btn-primary btn-large">
                                    Procesar Compra
                                </button>
                            </form>
                            <br>
                        </div>
                    </g:if>

                        <g:each in="${productos}" var="prod">
                            <div class="row">
                                <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">

                                    <h3>${prod["producto"].nombre}</h3>

                                    <img class="producto_thumbnail_img"
                                         src="data:image/jpeg;base64,${prod["producto"].imagen?.encodeBase64()}"
                                         alt="NO HAY IMAGEN... LO SIENTO"
                                         style="height: 100px"
                                    />
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <span class="badge">${prod["cantidad"]}</span>
                                            Cantidad:
                                        </li>
                                        <li class="list-group-item">
                                            <span class="badge">RD$ ${prod["producto"].precio}</span>
                                            Precio:
                                        </li>
                                        <li class="list-group-item">
                                            <span class="badge">
                                                ${prod["producto"].precio * prod["cantidad"]}
                                            </span>
                                            <b>A pagar:</b>
                                        </li>
                                    </ul>
                                    <div class="caption">

                                        <p>
                                            <form action="/carrito/quitar" method="post">
                                                <input type="hidden" name="id_producto" value="${prod["producto"].id}" />
                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </form>
                                        </p>
                                        <p>&nbsp;</p>

                                    </div>
                                </div>
                            </div>
                            </div>

                        </g:each>

                </div>
            </div>
        </div>
    </body>
</html>
