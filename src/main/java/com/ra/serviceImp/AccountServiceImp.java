package com.ra.serviceImp;

import com.ra.model.Account;
import com.ra.model.Category;
import com.ra.repository.IAccountRepository;
import com.ra.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImp implements IAccountService {
    @Autowired
    private IAccountRepository accountRepository;
    @Override
    public List<Account> displayData(String emailSearch, int page, int size, String direction, String sortBy) {
        //Khởi tạo đối tượng Pageable
        Pageable pageable = PageRequest.of(page,size,
                direction.equals("ASC")? Sort.Direction.ASC: Sort.Direction.DESC,sortBy);
        List<Account> listAccount = accountRepository.findByEmail(emailSearch,pageable).getContent();
        return listAccount;
    }

    @Override
    public List<Account> getAllData() {
        return accountRepository.findAll();
    }

    @Override
    public int getListPage(String email) {
        int countAccount= accountRepository.countByEmailContains(email);
        return countAccount;
    }

    @Override
    public Account findById(int accId) {

        return accountRepository.findById(accId).get();
    }

    @Override
    public boolean saveOrUpdate(Account account) {
        try {
            accountRepository.save(account);
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int accId) {
        try {
            accountRepository.delete(findById(accId));
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Account> getAllDataByAccStatusTrue() {
        return accountRepository.findAllByAccStatusIsTrue();
    }
}
