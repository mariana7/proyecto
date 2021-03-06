<%-- 
    Document   : index
    Created on : 3/10/2020, 01:56:45 PM
    Author     : Asdrubal
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <title>Cultivos</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>MiCosecha</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">


</head>
<body>

    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="1Bienvenida.jsp"><img src="images/isotipo.png" class="logo" width="300" height="150"></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item "><a class="nav-link" href="Controlador?accion=Inicio">Inicio <span class="sr-only">(current)</span></a></li>
                        <li class="nav-item "><a class="nav-link" href="Controlador?accion=home">Seguir Pidiendo <span class="sr-only">(current)</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Cuentas</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="9RegistroC.jsp">Registro Comprador</a>
                                <a class="dropdown-item" href="7InicioC.jsp">Sesion Comprador</a>
                                <a class="dropdown-item" href="10RegistroV.jsp">Registro Vendedor</a>
                                <a class="dropdown-item" href="8InicioV.jsp">Sesion Vendedor</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Anonimo</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </header>

    <div class="box-add-products">
        <div class="container mt-4">
            <h1>Tus Encargos</h1>
            <br>
                <div class="-col-sm-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>FOTO</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                                <tr>
                                    <td>${car.getItem()}</td>
                                    <td>${car.getNombres()}</td>
                                    <td>${car.getDescripcion()}</td>
                                    <td>
                                        <img src="ControladorIMG?id=${car.getIdproducto()}" width="100" height="100">
                                    </td>
                                    <td>${car.getPrecioCompra()}</td>
                                    <td>${car.getCantidad()}</td>
                                    <td>${car.getSubTotal()}</td>
                                    <td>
                                        <a href="#">Eliminar</a>
                                        <a href="#">Editar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>

    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="card text-center">
                <div class="card-header">
                    <h2><strong>Generar Pedido</strong></h2>
                </div>
                <div class="card-body">
                    <label><strong>Subtotal:</strong></label>
                    <input type="text" value="$ ${totalPagar}0" readonly="" class="form-control">

                    <label><strong>Total a </strong></label>
                    <input type="text" value="$ ${totalPagar}0" readonly="" class="form-control">


                </div>
                <div class="card-footer text-muted">
                    <a href=" #" class="btn btn-danger btn-block">Generar Pedido</a>
                </div>
            </div>





        </div>
    </div>  



</div>

<!-- End Products  -->


<!-- Start Instagram Feed  -->
<div class="instagram-box">
    <div class="main-instagram owl-carousel owl-theme">
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima1.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima2.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima3.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima4.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima5.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima6.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima7.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima8.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima9.jpg" alt="" />

            </div>

        </div>
        <div class="item">
            <div class="ins-inner-box">
                <img src="images/ImaInferiores/index/ima10.jpg" alt="" />

            </div>

        </div>
    </div>
</div>
<!-- End Instagram Feed  -->


<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4>Sobre AppWeb</h4>
                        <p>Vendedor</p> 
                        <p>Aca podran los cosechadores ver a consejos, ayudas, y a publicar sus productos para intercambio o venta.</p> 							
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>Información</h4>
                        <ul>
                            <li><a href="sobreN.jsp">Sobre Nosotros</a></li>
                            <li><a href="#">Servicio al cliente</a></li>
                            <li><a href="terminosYCondiciones.jsp">Terminos &amp; Condiciones</a></li>
                            <li><a href="politicaDePrivacidad.jsp">Politica de privacidad</a></li>
                            <li><a href="Metodologia.jsp">información de entrega</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>Contactanos</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Ciudad: Medellin <br>Politecnico Jaime Isaza Cadavid,<br> Carrera 48 No. 7 – 151 | El Poblado </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">Mariana o henry</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Correo: <a href="mailto:contactinfo@gmail.com">Nosfaltaeste@gmail.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; 2020 <a href="PrincipalV.jsp">MiCosecha</a> Design By : 
    </p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

<!-- ALL JS FILES -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="js/jquery.superslides.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/inewsticker.js"></script>
<script src="js/bootsnav.js."></script>
<script src="js/images-loded.min.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/baguetteBox.min.js"></script>
<script src="js/form-validator.min.js"></script>
<script src="js/contact-form-script.js"></script>
<script src="js/custom.js"></script>
</body>

</html>
