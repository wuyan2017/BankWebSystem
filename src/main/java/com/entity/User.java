package com.entity;

import java.util.Date;

/**
 * Created by wuyan on 2017/10/19.
 */
public class User {
    private int total;
    private int num;
    private int n;
    private Date loan_time;

    public int getTotal() {
        return total;
    }
    public void setTotal(int total) {
        this.total = total;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getN() {
        return n;
    }

    public void setN(int n) {
        this.n = n;
    }

    public Date getLoan_time() {
        return loan_time;
    }

    public void setLoan_time(Date loan_time) {
        this.loan_time = loan_time;
    }
    public User(int total,int num,int n,Date loan_time){
        super();
        this.total=total;
        this.num=num;
        this.n=n;
        this.loan_time=loan_time;
    }

}
