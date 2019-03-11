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
                <a href="${pageContext.request.contextPath}/demo" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-desktop fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DEMO VIEW
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


        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Creditworthiness Test</h1>
                        <hr>
                        <h5>The application calculates the creditworthiness of the client based on data:</h5>
                        <h5>
                            <ul>
                                <li>payment period</li>
                                <li>interest</li>
                                <li>installment type</li>
                                <li>credit limits</li>
                                <li>other loans</li>
                                <li>other liabilities</li>
                                <li>monthly income</li>
                                <li>number of dependents</li>
                            </ul>
                        </h5>
                        <h5>The application calculates the maximum loan amount based on the above data and the maximum
                            installment of the customer, using the annuity formula: <a href="https://en.wikipedia.org/wiki/Annuity" target="_blank">(source here from wiki)</a> </h5>


                        <h5><img
                                src="https://wikimedia.org/api/rest_v1/media/math/render/svg/6d10492db486b9289df62d8cd7df6199a211dcaf">
                            <br><br>where
                            <br>
                            <br>R = installment payment
                            <br>K = amount of credit
                            <br>p = loan interest rate (for one period n)
                            <br>n = number of installments
                        </h5>

                        <h5>From the above formula we calculate K and a R value is treated as free funds that we can
                            transfer to a loan (income minus all expenses).</h5>

                        <h5><b>Back End: </b>Java, Spring MVC.</h5>
                        <h5><b>Front End: </b>HTML, CSS, JSP.</h5>
                        <h5>To run application: git clone
                            https://github.com/MichalSiwiak/creditworthiness-test.git,
                            upload and run application using tomcat application server or similar.</h5>
                        <h5>Demo View: <a href="https://www.coffeecoding.net/creditworthiness/demo">https://www.coffeecoding.net/creditworthiness/demo</a>
                        </h5>

                    </div>
                </div>
                <h5>Model class:</h5>
                <pre><code class="java">
  package net.coffeecoding.model;

public class Creditworthiness {

    //required data
    private double monthlyIncome;
    private int paymentPeriod;
    private double interest;
    //additional data
    private String installmentType;
    private double creditLimits;
    private double otherLoans;
    private double otherLiabilities;
    private double dependents;

    private Creditworthiness(final CreditBuilder creditBuilder) {
        this.monthlyIncome = creditBuilder.monthlyIncome;
        this.paymentPeriod = creditBuilder.paymentPeriod;
        this.interest = creditBuilder.interest;
        this.installmentType = creditBuilder.installmentType;
        this.creditLimits = creditBuilder.creditLimits;
        this.otherLoans = creditBuilder.otherLoans;
        this.otherLiabilities = creditBuilder.otherLiabilities;
        this.dependents = creditBuilder.dependents;
    }

    public Creditworthiness() {
    }

    // calculation for net income
    public double calculateNetIncome() {
        if (installmentType.equals("equal")) {
            return monthlyIncome - otherLiabilities - otherLoans - ((creditLimits * 0.035) / 12) - (dependents * 1000);
        } else {
            return 0.7 * (monthlyIncome - otherLiabilities - otherLoans - ((creditLimits * 0.035) / 12) - (dependents * 1000));
        }

    }

    // calculation for max credit
    public double calculateMaxCredit() {

        //loan repaid monthly so the rate must be divided by 12 and 100
        double monthlyInterestRate = interest / 1200;
        double dividendMaxCredit = (Math.pow(1 + monthlyInterestRate, paymentPeriod) - 1) * calculateNetIncome();
        double divisorMaxCredit = monthlyInterestRate * Math.pow(1 + monthlyInterestRate, paymentPeriod);
        if (calculateNetIncome() <= 0)
            return 0;
        else
            return dividendMaxCredit / divisorMaxCredit;
    }

    // calculation for payment credit
    public double calculatePmt() {
        //loan repaid monthly so the rate must be divided by 12 and 100
        double monthlyInterestRate = interest / 1200;
        double dividendPmt = monthlyInterestRate * Math.pow(1 + monthlyInterestRate, paymentPeriod) * calculateMaxCredit();
        double divisorPmt = Math.pow(1 + monthlyInterestRate, paymentPeriod) - 1;
        if (calculateNetIncome() <= 0)
            return 0;
        else
            return dividendPmt / divisorPmt;
    }

    public double getMonthlyIncome() {
        return monthlyIncome;
    }

    public void setMonthlyIncome(double monthlyIncome) {
        this.monthlyIncome = monthlyIncome;
    }

    public int getPaymentPeriod() {
        return paymentPeriod;
    }

    public void setPaymentPeriod(int paymentPeriod) {
        this.paymentPeriod = paymentPeriod;
    }

    public double getInterest() {
        return interest;
    }

    public void setInterest(double interest) {
        this.interest = interest;
    }

    public String getInstallmentType() {
        return installmentType;
    }

    public void setInstallmentType(String installmentType) {
        this.installmentType = installmentType;
    }

    public double getCreditLimits() {
        return creditLimits;
    }

    public void setCreditLimits(double creditLimits) {
        this.creditLimits = creditLimits;
    }

    public double getOtherLoans() {
        return otherLoans;
    }

    public void setOtherLoans(double otherLoans) {
        this.otherLoans = otherLoans;
    }

    public double getOtherLiabilities() {
        return otherLiabilities;
    }

    public void setOtherLiabilities(double otherLiabilities) {
        this.otherLiabilities = otherLiabilities;
    }

    public double getDependents() {
        return dependents;
    }

    public void setDependents(double dependents) {
        this.dependents = dependents;
    }

    @Override
    public String toString() {
        return "Creditworthiness{" +
                "monthlyIncome=" + monthlyIncome +
                ", paymentPeriod=" + paymentPeriod +
                ", interest=" + interest +
                ", installmentType='" + installmentType + '\'' +
                ", creditLimits=" + creditLimits +
                ", otherLoans=" + otherLoans +
                ", otherLiabilities=" + otherLiabilities +
                ", dependents=" + dependents +
                '}';
    }

    public static class CreditBuilder {
        //required data
        private double monthlyIncome;
        private int paymentPeriod;
        private double interest;
        //additional data
        private String installmentType;
        private double creditLimits;
        private double otherLoans;
        private double otherLiabilities;
        private double dependents;

        public Creditworthiness build() {
            return new Creditworthiness(this);
        }


        public CreditBuilder withMonthlyIncome(double monthlyIncome) {
            this.monthlyIncome = monthlyIncome;
            return this;
        }

        public CreditBuilder withPaymentPeriod(int paymentPeriod) {
            this.paymentPeriod = paymentPeriod;
            return this;
        }

        public CreditBuilder withInterest(double interest) {
            this.interest = interest;
            return this;
        }

        public CreditBuilder withInstallmentType(String installmentType) {
            this.installmentType = installmentType;
            return this;
        }

        public CreditBuilder withCreditLimits(double creditLimits) {
            this.creditLimits = creditLimits;
            return this;
        }

        public CreditBuilder withOtherLoans(double otherLoans) {
            this.otherLoans = otherLoans;
            return this;
        }

        public CreditBuilder withOtherLiabilities(double otherLiabilities) {
            this.otherLiabilities = otherLiabilities;
            return this;
        }

        public CreditBuilder withDependents(double dependents) {
            this.dependents = dependents;
            return this;
        }

    }
}
</code></pre>
                <br>
                <h5>Controller class:</h5>
                <pre><code class="java">
package net.coffeecoding.controller;

import net.coffeecoding.model.Creditworthiness;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class AppController {


    @GetMapping("/error")
    public String showErrorPage() {

        return "error-page";
    }

    @GetMapping("/demo")
    public String showDemoPage(Model model) {

        //default value
        Creditworthiness creditworthiness = new Creditworthiness.CreditBuilder()
                .withMonthlyIncome(5000)
                .withInterest(3.5)
                .withPaymentPeriod(12)
                .build();

        model.addAttribute("creditworthiness", creditworthiness);

        return "creditworthiness-test-form";
    }

    @PostMapping("/demo")
    public String calculateCreditworthiness(@ModelAttribute("creditworthiness") Creditworthiness creditworthiness, Model model) {


        System.out.println(creditworthiness.toString());

        if (creditworthiness.calculateNetIncome() <= 0) {
            model.addAttribute("error", "No creditworthiness");

        } else {
            model.addAttribute("success", "success");
            model.addAttribute("netIncome", roundDouble2precision(creditworthiness.calculateNetIncome(), 2));
            model.addAttribute("maxCredit", roundDouble2precision(creditworthiness.calculateMaxCredit(), 2));
            model.addAttribute("pmt", roundDouble2precision(creditworthiness.calculatePmt(), 2));
        }


        return "creditworthiness-test-form";
    }


    public double roundDouble2precision(double value, int places) {
        if (places < 0)
            throw new IllegalArgumentException();
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

}
</code></pre>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/highlight.min.js"></script>
                <script>
                    hljs.initHighlightingOnLoad();
                </script>
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