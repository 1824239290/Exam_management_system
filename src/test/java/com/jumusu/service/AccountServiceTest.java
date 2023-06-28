package com.jumusu.service;

import com.jumusu.config.SpringConfig;
import com.jumusu.domain.Account;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/7 18:23
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class AccountServiceTest {
    @Autowired
    private AccountService accountService;
    @Test
    public void getUserByName() {
        Account account = accountService.getUserByName("admin");
        System.out.println(account);
    }
}