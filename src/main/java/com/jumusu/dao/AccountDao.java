package com.jumusu.dao;

import com.jumusu.domain.Account;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Author: 橘木苏_Oc
 * @Description: Account表mapper
 * @Date 2023/6/6 22:08
 */
@Repository
public interface AccountDao {
    @Select("select * from account where user = #{user}")
    public Account getUserByName(String user);
}
