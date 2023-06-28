package com.jumusu.dao;

import com.jumusu.domain.Reply;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ReplyDao {
    @Insert("insert into reply (`uid`,`pid`,`tid`,`type`,`selected`,`score`,`date`) VALUES (#{uid},#{pid},#{tid},#{type},#{selected},#{score},now())")
    boolean addReply(Reply reply);
    @Select("SELECT * from reply r WHERE pid=#{pid} AND uid=#{uid} AND type=#{type}")
    List<Reply> getReplyByPidWithUid(@Param("pid") Integer pid,@Param("uid") Integer uid,@Param("type") String type);
}
