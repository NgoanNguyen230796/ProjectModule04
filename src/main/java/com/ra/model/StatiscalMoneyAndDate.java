package com.ra.model;

import org.springframework.stereotype.Controller;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "StatiscalMoneyAndDate")
public class StatiscalMoneyAndDate {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name="total")
    private double total;
    @Column(name="dateTotal")
    private Date dateTotal;

    public StatiscalMoneyAndDate() {
    }

    public StatiscalMoneyAndDate(double total, Date dateTotal) {
        this.total = total;
        this.dateTotal = dateTotal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getDateTotal() {
        return dateTotal;
    }

    public void setDateTotal(Date dateTotal) {
        this.dateTotal = dateTotal;
    }
}
