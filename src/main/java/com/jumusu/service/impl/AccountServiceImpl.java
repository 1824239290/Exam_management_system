package com.jumusu.service.impl;

import com.jumusu.dao.AccountDao;
import com.jumusu.domain.Account;
import com.jumusu.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/7 9:20
 */
@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;
    public Account getUserByName(String name) {
        return accountDao.getUserByName(name);
    }
}
