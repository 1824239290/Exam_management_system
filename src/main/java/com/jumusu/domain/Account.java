package com.jumusu.domain;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/6 22:01
 */
public class Account {
    private int uid;
    private String user;
    private String password;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" +
                "uid=" + uid +
                ", user='" + user + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
