package com.jumusu.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:27
 */

public interface TestQDao {
    @Select("SELECT jid FROM(select * from  judgment  where qid = #{qid}) a order by rand(unix_timestamp()) LIMIT 10;")
    List<String> getRand15Judgment(@Param("qid") String qid);
    @Select("SELECT mid FROM(select * from  multiple  where qid = #{qid}) a order by rand(unix_timestamp()) LIMIT 4;")
    List<String> getRand15Multiple(@Param("qid") String qid);
    @Select("SELECT tid FROM(select * from  schose  where qid = #{qid}) a order by rand(unix_timestamp()) LIMIT 20;")
    List<String> getRand20Schose(@Param("qid") String qid);
    @Insert("insert into testq (`tpid`, `qid`, `type`) values (#{tpid},#{qid},#{type});")
    boolean addTestQ(@Param("tpid") String tpid, @Param("qid") String qid, @Param("type") String type);
    @Delete("delete from testq where tpid=#{tpid}")
    int deleteTestQ(@Param("tpid") String tpid);
}
