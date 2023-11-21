package com.ra.service;


import com.ra.model.Account;
import com.ra.model.Category;

import java.util.List;

public interface IAccountService {
    List<Account> displayData(String emailSearch, int page, int size, String direction, String sortBy);
    List<Account> getAllData();
    List<Account> getAllDataByAccStatusTrue();
    int getListPage(String email);
    Account findById(int accId);
    boolean saveOrUpdate(Account account);
    boolean delete(int accId);

    int statisticalAccountActive();
    int statisticalAccountInActive();


}
