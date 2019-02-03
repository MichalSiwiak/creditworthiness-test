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


    // calculation for net income
    public double calculateNetIncome() {
        return monthlyIncome - otherLiabilities - otherLoans - ((creditLimits * 0.035) / 12) - (dependents * 1000);
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
}
