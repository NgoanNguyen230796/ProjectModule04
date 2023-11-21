package com.ra.model;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Formula;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "BillUpdate")
public class BillUpdate {
    @Id
    @Column(name = "bill_id",length = 5)
    private String billId;
    @Column(name = "created", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP", updatable = false)
    private Date created;
    @Column(name = "bill_status")
    private int billStatus;

    @Column(name = "acc_id")
    private int accId;

    public BillUpdate() {
    }

    public BillUpdate(String billId, Date created, int billStatus, int accId) {
        this.billId = billId;
        this.created = created;
        this.billStatus = billStatus;
        this.accId = accId;
    }

    public String getBillId() {
        return billId;
    }

    public void setBillId(String billId) {
        this.billId = billId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public int getBillStatus() {
        return billStatus;
    }

    public void setBillStatus(int billStatus) {
        this.billStatus = billStatus;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }
}
