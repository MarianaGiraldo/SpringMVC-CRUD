<%-- 
    Document   : nav
    Created on : 13/02/2022, 07:48:59 PM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <%@include file="bootstrap.jsp" %>
        <link rel="stylesheet" href='<c:url value="public/css/main.css" />' >
        <link rel="stylesheet" href='<c:url value="public/css/nav.css" />' >
        <link rel="stylesheet" href='<c:url value="public/css/util.css" />' >

        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/bootstrap/css/bootstrap.min.css" />'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/animate/animate.css" />'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/css-hamburgers/hamburgers.min.css" />'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/animsition/css/animsition.min.css" />'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/select2/select2.min.css"/>'>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href='<c:url value="vendor/daterangepicker/daterangepicker.css"/>'>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

        <script src='<c:url value="Views/js/nav.js"/>'></script>     
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/jquery/jquery-3.2.1.min.js"/>'></script>
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/animsition/js/animsition.min.js"/>'></script>
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/bootstrap/js/popper.js"/>'></script>
        <script src='<c:url value="vendor/bootstrap/js/bootstrap.min.js"/>'></script>
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/select2/select2.min.js"/>'></script>
        <script>
            $(".selection-2").select2({
                minimumResultsForSearch: 20,
                dropdownParent: $('#dropDownSelect1')
            });
        </script>
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/daterangepicker/moment.min.js"/>'></script>
        <script src='<c:url value="vendor/daterangepicker/daterangepicker.js"/>'></script>
        <!--===============================================================================================-->
        <script src='<c:url value="vendor/countdowntime/countdowntime.js"/>'></script>
        <!--===============================================================================================-->
        <script src='<c:url value="js/main.js"/>'></script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adopt Pets</title>
    </head>
    <body class="bg-primary bg-opacity-10">

    <nav class="navbar navbar-expand-lg nav">
        <div class="container-fluid container">
            <div class="logo">
                <a class="navbar-brand" href="index.htm">Your Logo</a>
            </div>
            <button class="navbar-toggler" style="color: #fff;" type="button" data-bs-toggle="collapse" data-bs-target="#mainListDiv" aria-controls="mainListDiv" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="mainListDiv" class="main_list collapse navbar-collapse">
                <ul class="navlinks navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.htm">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jstlform_user.htm">User</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jstlform_pet.htm">Pet</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adopt_form.htm">Adopt Pet</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- Jquery needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>

    <!-- Function used to shrink nav bar removing paddings and adding black background -->
    <script>
                $(window).scroll(function() {
                    if ($(document).scrollTop() > 50) {
                        $('.nav').addClass('bg-dark');
                        $('.nav').addClass('p-0');
                        console.log("OK");
                    } else {
                        $('.nav').removeClass('bg-dark');
                        $('.nav').removeClass('p-0');
                    }
                    s
                });
    </script>