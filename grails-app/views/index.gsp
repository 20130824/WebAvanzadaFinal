<%@ page import="ProyectoFinalWeb.TipoUsuario" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Tienda Something </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/favicon.png">
    <asset:stylesheet src="application.css"/>

</head>
<body>

<!-- PRELOADER -->
<div id="preloader">
    <div class="preloader-area">
        <div class="preloader-box">
            <div class="preloader"></div>
        </div>
    </div>
</div>


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


<section class="slider-section">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators slider-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <g:img dir="images" file="slider.jpg" width="1648" height="600"/>
                <div class="carousel-caption">
                    <h2>DRESSES <b>&</b> JEANS</h2>
                    <h3>FROM OURFAMOUS BRANDS <Span>SALE</Span></h3>
                    <a href="#">Buy Now</a>
                </div>
            </div>
            <div class="item">
                <g:img dir="images" file="slider.jpg" width="1648" height="600"/>
                <div class="carousel-caption">
                    <h2>DRESSES <b>&</b> JEANS</h2>
                    <h3>FROM OURFAMOUS BRANDS <Span>SALE</Span></h3>
                    <a href="#">Buy Now</a>
                </div>
            </div>
            <div class="item ">
                <g:img dir="images" file="slider.jpg" width="1648" height="600"/>
                <div class="carousel-caption">
                    <h2>DRESSES <b>&</b> JEANS</h2>
                    <h3>FROM OURFAMOUS BRANDS <Span>SALE</Span></h3>
                    <a href="#">Buy Now</a>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="pe-7s-angle-left glyphicon-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="pe-7s-angle-right glyphicon-chevron-right" aria-hidden="true"></span>
        </a>
    </div>
</section>

<section class="service-section">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.1s">
                <div class="service-item">
                    <i class="pe-7s-settings"></i>
                    <h3>SETTING</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.2s">
                <div class="service-item">
                    <i class="pe-7s-safe"></i>
                    <h3>MONEY BACK</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.3s">
                <div class="service-item">
                    <i class="pe-7s-global"></i>
                    <h3>WORLDWIDE SHIPPING</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.4s">
                <div class="service-item">
                    <i class="pe-7s-headphones"></i>
                    <h3>Online support</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="featured-section">
    <div class="container" role="main">
        <div class="row">
            <div class="col col-md-12">

                <br>
                <g:if test="${flash.message}">
                    <div class="alert alert-info" role="status">${flash.message}</div>
                    <br>
                </g:if>
                <g:if test="${flash.error}">
                    <div class="alert alert-danger" role="status">${flash.error}</div>
                    <br>
                </g:if>
                <div class="row">
                    <g:each in="${productos}" var="prod">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <img class="producto_thumbnail_img"
                                     src="data:image/jpeg;base64,${prod.imagen?.encodeBase64()}"
                                     alt="NO HAY IMAGEN... LO SIENTO"
                                     style="height: 100px"
                                />
                                <div class="caption">
                                    <h3>${prod.nombre}</h3>
                                    <p>RD$ ${prod.precio}</p>
                                    <p>
                                        <a href="/producto/detail/${prod.id}" class="btn btn-success" style="text-decoration: none">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="offer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 wow fadeInDown animated ">
                <h1>END OF SEASON SALE</h1>
                <h2>Up to 35% off Women's Denim</h2>
            </div>
        </div>
    </div>
</section>


<section class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="titie-section wow fadeInDown animated ">
                    <h1>GET IN TOUCH</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 wow fadeInLeft animated">
                <div class="left-content">
                    <h1><span>M</span>art</h1>
                    <h3>We'd love To Meet You In Person Or Via The Web!</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel nulla sapien. Class aptent tacitiaptent taciti sociosqu ad lit himenaeos. Suspendisse massa urna, luctus ut vestibulum necs et, vulputate quis urna. Donec at commodo erat.</p>
                    <div class="contact-info">
                        <p><b>Main Office:</b> 123 Elm St. New York City, NY</p>
                        <p><b>Phone:</b> 1.555.555.5555</p>
                        <p><b>Email:</b> info@yourdomain.com</p>
                    </div>
                    <div class="social-media">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow fadeInRight animated">
                <form action="" method="" class="contact-form">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" id="name" placeholder="Your Name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" id="email1" placeholder="Your Email">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" id="subject" placeholder="Subject">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <input type="text" class="form-control" id="url" placeholder="Website URL">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <textarea name="" id="" class="form-control" cols="30" rows="5" placeholder="Your Message..."></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <input type="submit" class="contact-submit" value="Send" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="center">Made with <i class="fa fa-heart"></i> by <a href="https://revolthemes.net/" target="_blank">Revolthemes</a>. All Rights Reserved</p>

            </div>
        </div>
    </div>
</footer>

<div class="modal fade" id="cart-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" >&times;</button>
                <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-shopping-cart"></span>Mi Carro de Compras</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover table-responsive" id="carTable"></table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Facturar</button>
            </div>
        </div>
    </div>
</div>

<!-- JQUERY -->
<asset:javascript src="application.js"/>
</body>
</html>
