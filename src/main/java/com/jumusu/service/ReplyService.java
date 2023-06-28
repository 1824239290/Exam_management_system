package com.jumusu.service;

import com.jumusu.domain.Reply;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyService {
    boolean addReply(List<Reply> replies);
    List<Reply> getReplyByPidWithUid(Integer pid, Integer uid,String type);
}
