package com.jumusu.controller;

import com.jumusu.dao.AccountDao;
import com.jumusu.domain.Account;
import com.jumusu.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/7 12:27
 */
@RestController
public class LoginController {
    @Autowired
    private AccountService accountService;
    @GetMapping("/login")
    public ModelAndView Login(){
        return new ModelAndView("./pages/login/login.jsp");
    }
    @PostMapping("/login")
    public Res Logins(@RequestBody Account account, HttpSession httpSession){

        Account user = new Account();
//        System.out.println(user);
//        System.out.println(account);
        try {
            user = accountService.getUserByName(account.getUser());
//            System.out.println(user);
        }catch (Exception e){
            return new Res(null,500,"账号或密码错误，登陆失败");
        }
        if (account.getPassword() == null ? user.getPassword() == null : account.getPassword().equals(user.getPassword())){
            httpSession.setAttribute("account",user);
//            System.out.println(httpSession);
            return new Res(user,200,"登录成功");
        }else {
            return new Res(null,500,"登陆失败");
        }
    }
    @GetMapping("/logout")
    public Res Logout(HttpSession session){
        session.invalidate();
        System.out.println(session);
        return new Res(null,200,"注销成功");
    }
}
