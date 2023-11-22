package com.ra.serviceImp;

import com.ra.model.StatiscalMoneyAndDate;
import com.ra.repository.IAccountRepository;
import com.ra.repository.IStatiscalMoneyAndDateRepository;
import com.ra.service.IStatiscalMoneyAndDateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class IStatiscalMoneyAndDateServiceImp implements IStatiscalMoneyAndDateService {
    @Autowired
    private IStatiscalMoneyAndDateRepository statiscalMoneyAndDateRepository;
    @Override
    public List<StatiscalMoneyAndDate> total() {
        return statiscalMoneyAndDateRepository.total();
    }
}
