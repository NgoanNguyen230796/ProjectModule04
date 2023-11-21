package com.ra.model;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Formula;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "BillAndBillDetailUpdate")
public class BillAndBillDetailUpdate {

    @Id
    @Column(name = "bill_id",length = 5)
    private String billId;
    @CreationTimestamp
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP", updatable = false)
    private Date created;

    @Column(name = "bill_status", columnDefinition = "INTEGER DEFAULT 1")
    private int billStatus;

    @Column(name = "acc_id")
    private int accId;
    @Column(name = "bill_detail_id")
    private Long billDetailId;
    @Column(name = "price", columnDefinition = "FLOAT CHECK (price > 0)")
    private float price;

    @Column(name = "quantity", columnDefinition = "LONG CHECK (quantity > 0)")
    private Long quantity;

    @Column(name = "total", columnDefinition = "DOUBLE")
    @Formula("price * quantity")
    private Double total;


    public BillAndBillDetailUpdate() {
    }

    public BillAndBillDetailUpdate(String billId, Date created, int billStatus, int accId, Long billDetailId, float price, Long quantity, Double total) {
        this.billId = billId;
        this.created = created;
        this.billStatus = billStatus;
        this.accId = accId;
        this.billDetailId = billDetailId;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
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

    public Long getBillDetailId() {
        return billDetailId;
    }

    public void setBillDetailId(Long billDetailId) {
        this.billDetailId = billDetailId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
}
