package net.coffeecoding.model;

public class Creditworthiness {


    private int paymentPeriod;
    private double interest;
    private String installmentType;
    private int creditLimits;
    private int otherLoans;
    private int otherLiabilities;
    private int monthlyIncome;
    private int dependents;

    @Override
    public String toString() {
        return "Creditworthiness{" +
                "paymentPeriod=" + paymentPeriod +
                ", interest=" + interest +
                ", installmentType='" + installmentType + '\'' +
                ", creditLimits=" + creditLimits +
                ", otherLoans=" + otherLoans +
                ", otherLiabilities=" + otherLiabilities +
                ", monthlyIncome=" + monthlyIncome +
                ", dependents=" + dependents +
                '}';
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

    public int getCreditLimits() {
        return creditLimits;
    }

    public void setCreditLimits(int creditLimits) {
        this.creditLimits = creditLimits;
    }

    public int getOtherLoans() {
        return otherLoans;
    }

    public void setOtherLoans(int otherLoans) {
        this.otherLoans = otherLoans;
    }

    public int getOtherLiabilities() {
        return otherLiabilities;
    }

    public void setOtherLiabilities(int otherLiabilities) {
        this.otherLiabilities = otherLiabilities;
    }

    public int getMonthlyIncome() {
        return monthlyIncome;
    }

    public void setMonthlyIncome(int monthlyIncome) {
        this.monthlyIncome = monthlyIncome;
    }

    public int getDependents() {
        return dependents;
    }

    public void setDependents(int dependents) {
        this.dependents = dependents;
    }
}
