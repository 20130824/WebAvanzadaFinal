<%@ page import="ProyectoFinalWeb.TipoUsuario" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Productos</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/favicon.png">
    <asset:stylesheet src="application.css"/>

</head>
<body>

<section class="header-top-section">
    <div class="container">
        <div class="row">
            <div  class="col-md-6">
                <div class="header-top-content">
                    <ul class="nav nav-pills navbar-left">
                        <li><a href="#"><i class="pe-7s-call"></i><span>123-123456789</span></a></li>
                        <li><a href="#"><i class="pe-7s-mail"></i><span> info@mart.com</span></a></li>
                        <li><a href="/"><i ></i><span>Inicio</span></a></li>

                        <g:if test="${session.usuario}">
                            <g:if test="${session.usuario.tipo in [TipoUsuario.ADMIN]}">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        Usuario <span class="caret"></span>
                                    </a>
                                    <ul style="background-color: #1abc9c; padding-left: 3px" class="dropdown-menu">
                                        <li><a href="/usuario/create">Crear</a></li>
                                        <li><a href="/usuario/">Lista de Usuarios</a></li>
                                    </ul>
                                </li>

                            </g:if>
                        </g:if>


                        <g:if test="${session.usuario}">
                            <g:if test="${session.usuario.tipo in [TipoUsuario.ADMIN]}">

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        Producto <span class="caret"></span>
                                    </a>
                                    <ul style="background-color: #1abc9c; padding-left: 3px" class="dropdown-menu">
                                        <li><a href="/producto/create">Crear</a></li>
                                        <li><a href="/producto/">Lista de Productos</a></li>
                                    </ul>
                                </li>
                            </g:if>
                        </g:if>

                    </ul>
                </div>
            </div>
            <div  class="col-md-6">
                <div class="header-top-menu">
                    <ul class="nav nav-pills navbar-right">

                        <g:if test="${session.usuario}">
                            <g:if test="${session.usuario.tipo in [TipoUsuario.ADMIN, TipoUsuario.ALMACEN]}">

                                <li>
                                    <a href="/factura/ver_despachar">
                                        <i class="fa fa-truck"></i> Despacho
                                    </a>
                                </li>

                            </g:if>
                        </g:if>
                        <g:if test="${!session.usuario}">
                            <li><a href="/login/login"><i class="pe-7s-lock"  aria-hidden="true"></i>Iniciar Sesión</a></li>

                        </g:if>
                        <g:else>

                            <li><a href="/login/logout"><i class="pe-7s-lock"  aria-hidden="true"></i>Cerrar Sesión</a></li>
                        </g:else>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<header class="header-section">
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><b>T</b>ienda</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Inicio</a></li>
                    <li><a href="/producto">Productos</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right cart-menu">
                    <li><a  href="/carrito/ver" style="cursor: pointer;" data-target="#cart-modal" data-toggle="modal"><span> Carrito&nbsp;</span> <span class="shoping-cart"  >T</span></a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>
</header>


    <div class="container" role="main">
        <div class="row">
                    <div class="row">
                        <div class="jumbotron">
                            <div class="row">
                                <div class="col col-md-4" style="margin-right: 35px;">
                                    <img class="thumbnail"
                                         src="data:image/jpeg;base64,${producto.imagen?.encodeBase64()}"
                                         style="width: 300px; background-color: #e9f0fd"
                                    />
                                </div>
                                <g:if test="${session.usuario}">
                                    <g:if test="${session.usuario.tipo in [TipoUsuario.CLIENTE_CONSUMIDOR_FINAL, TipoUsuario.CLIENTE_EMPRESA, TipoUsuario.CLIENTE_PERSONA_FISICA]}">
                                        <div class="col col-md-6 col-md-offset-1">
                                            <div>
                                                <form action="/carrito/agregar" method="post">
                                                    <h1 style="text-decoration: underline">${producto.nombre}</h1>
                                                    <label>Cantidad:</label>
                                                    <input type="hidden" name="id_producto" value="${producto.id}" />
                                                    <g:field type="number" name="cantidad" min="1" max="${producto.existencia}"/>
                                                    <br>
                                                    <br>
                                                    <p><b>RD$ ${producto.precio}</b></p>
                                                    <br>
                                                    <p>${producto.descripcion}</p>
                                                    <br>
                                                    <button type="submit" name="crear" class="btn btn-large" style="background-color: #1abc9c; color: white">
                                                        <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                                        Agregar al carrito
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </g:if>
                                </g:if>
                            </div>
                        </div>
                    </div>
                </div>
    </div>

</body>
</html>
