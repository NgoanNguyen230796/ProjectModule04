package com.ra.model;

import jakarta.validation.constraints.NotBlank;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "AccountUpdate")
public class AccountUpdate {
    @Id
    @Column(name = "acc_id")
    private int accId;

    @Column(name = "email",length = 100)
    private String email;
    @Column(name = "password",length = 30)
    private String password;
    @Column(name = "created", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP", updatable = false)
    private Date created;
    @Column(name = "role")
    private boolean role;
    @Column(name = "accStatus")
    private boolean accStatus;


    public AccountUpdate() {
    }

    public AccountUpdate(int accId, String email, String password, Date created, boolean role, boolean accStatus) {
        this.accId = accId;
        this.email = email;
        this.password = password;
        this.created = created;
        this.role = role;
        this.accStatus = accStatus;
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public boolean isAccStatus() {
        return accStatus;
    }

    public void setAccStatus(boolean accStatus) {
        this.accStatus = accStatus;
    }
}
