<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>coffeecoding.net</title>
    <meta name="description"
          content="Free open source projects present different java solutions using spring, hibernate and other popular frameworks.">
    <meta name="keywords"
          content="java, spring, hibernate, apache, tomcat, coding, programmer, linux, google cloud platform, open source, bootstrap, mysql, java ideas">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
    <link rel="stylesheet" href="https://www.coffeecoding.net/resources/css/now-ui-kit.css" type="text/css">
    <link rel="stylesheet" href="https://www.coffeecoding.net/resources/css/style.css" type="text/css">
    <link rel="icon" href="resources/img/favicon.png">
    <!-- PAGE scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
</head>


<body class="bg-light text-dark">
<div id="wrap">
    <div id="main" class="clear-top">


        <div class="collapse" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 py-4">
                        <h4>About</h4>
                        <p class="text-info">Free open source projects present different java solutions using spring,
                            hibernate
                            and other popular frameworks.</p>
                    </div>
                    <div class="col-md-3 offset-md-1 py-4">
                        <h4>Contact</h4>
                        <ul class="list-unstyled">
                            <li>
                                <a href="https://pl.linkedin.com/in/michalsiwiak" class="text-secondary"
                                   target="_blank">Follow
                                    on LinkedIn</a>
                            </li>
                            <li>
                                <a href="mailto:info@coffeecoding.net" target="_top" class="text-secondary">Email me</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar sticky-top navbar-dark bg-info">
            <div class="container d-flex justify-content-between">
                <a href="https://www.coffeecoding.net/" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-home fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">
                    HOME
                </text>
                </a>
                <a href="https://github.com/MichalSiwiak/creditworthiness-test" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-git-square fa-fw d-inline-block lead fa-2x"></i>&nbsp;&nbsp;<text class="">SOURCE
                    CODE
                </text>
                </a>
                <a href="${pageContext.request.contextPath}" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-file-text fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DESCRIPTION
                </text>
                </a>
                <a href="https://coffeecoding.net/resources/img/cv_msiwiak.pdf" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-address-card fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">RESUME
                </text>
                </a>
                <a href="/contact" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-envelope fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">CONTACT
                </text>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>


        <div class="text-center py-4 bg-secondary"
             style="	background-image: linear-gradient(to left, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.9));	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
            <div class="container">
                <div class="row">
                    <div class="col-md-0">
                        <h1 class="text-left text-primary">Creditworthiness Test</h1>
                        <p class="lead text-left">Creditworthiness test using the reverse PMT function</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="py-5">
            <div class="container">
                <h2>Calculate Your Creditworthiness:</h2>
                <div class="row my-5">
                    <form:form modelAttribute="creditworthiness" method="POST" class="col-md-12">
                        <div>
                            <div class="row">
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>payment period</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="paymentPeriod" type="number" min="12" max="360" step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"
                                                required="required"/>
                                </div>
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>interest</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="interest" type="number" min="1" max="20" step="0.01"
                                                class="form-control w-100 border-secondary border-0 text-center"
                                                required="required"/>
                                </div>
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>installment type</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <select id="installmentType" name="installmentType" class="form-control w-100 border-secondary border-0 text-center">
                                        <option style="text-align-last:center;" value="equal">equal</option>
                                        <option style="text-align-last:center;" value="decreasing">decreasing</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>credit limits</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="creditLimits" type="number" min="0" max="100000" step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"/>
                                </div>
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>other loans</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="otherLoans" type="number" min="0" max="10000" step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"/>
                                </div>
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>other liabilities</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="otherLiabilities" type="number" min="0" max="10000"
                                                step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="lead m-0 mt-1 text-center"><b>monthly income</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="monthlyIncome" type="number" min="1000" max="100000" step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"
                                                required="required"/>
                                </div>
                                <div class="col-md-2 m-0 p-0 bg-secondary text-light border rounded-left rounded-right">
                                    <p class="m-0 mt-1 text-center lead"><b>dependents</b></p>
                                </div>
                                <div class="col-md-2 m-0 p-0 border rounded-top rounded-bottom">
                                    <form:input path="dependents" type="number" min="0" max="20" step="1"
                                                class="form-control w-100 border-secondary border-0 text-center"/>
                                </div>
                                <div class="m-0 p-0 col-md-4 w-25">
                                    <button class="btn w-100 mt-0 mb-0 btn-warning text-dark" type="submit">calculate
                                        your
                                        creditworthiness
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>

                <div class="col mb-2 px-0">
                    <c:if test="${success != null}">
                        <div class="text-center px-5 mt-5 mb-0" role="alert">
                            <div class="container">
                                <h3>Net Income: <fmt:formatNumber value="${netIncome}" type="currency"
                                                                  currencySymbol="PLN"/></h3>
                                <h3>Max Credit: <fmt:formatNumber value="${maxCredit}" type="currency"
                                                                  currencySymbol="PLN"/></h3>
                                <h3>Max Payment:<fmt:formatNumber value="${pmt}" type="currency"
                                                                  currencySymbol="PLN"/></h3>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${error != null}">
                        <div class="alert alert-danger text-white text-center px-5 mt-5 mb-0" role="alert">
                            <div class="container">
                                <i class="now-ui-icons objects_support-17 lg pull-left mr-3"></i>
                                <strong>ERROR!</strong>
                                <span> ${error}</span>
                                <button type="button" class="close text-white" data-dismiss="alert">
                                    <i class="now-ui-icons ui-1_simple-remove"></i>
                                </button>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>


    </div>
</div>


<footer class="footer bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 coffeecoding.net - All rights reserved.<br>Contact: info@coffeecoding.net<br>Warsaw PL<br><a
                href="https://www.coffeecoding.net/">Visit the homepage</a>
        </p>
    </div>
</footer>

</body>

</html>