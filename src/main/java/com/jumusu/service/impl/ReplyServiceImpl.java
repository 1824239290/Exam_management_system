package com.jumusu.service.impl;

import com.jumusu.dao.JudgmentDao;
import com.jumusu.dao.MultipleDao;
import com.jumusu.dao.ReplyDao;
import com.jumusu.dao.SchoseDao;
import com.jumusu.domain.Judgment;
import com.jumusu.domain.Multiple;
import com.jumusu.domain.Reply;
import com.jumusu.domain.Schose;
import com.jumusu.service.ReplyService;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ReplyServiceImpl implements ReplyService {
    @Autowired
    private ReplyDao replyDao;
    @Autowired
    private JudgmentDao judgmentDao;
    @Autowired
    private MultipleDao multipleDao;
    @Autowired
    private SchoseDao schoseDao;

    public boolean addReply(List<Reply> replies) {

        try {
            for (int i = 0 ; i < replies.size(); i++){
                String type = replies.get(i).getType();
                if (type.equals("judgment")){
                    Judgment judgment = judgmentDao.getJudgmentById(Integer.valueOf(replies.get(i).getTid()));
                    if (judgment.getAnswer().equals(replies.get(i).getSelected())){
                        replies.get(i).setScore("2");
                    }else {
                        replies.get(i).setScore("0");
                    }
                }else if (type.equals("schose")){
                    Schose schose = schoseDao.getSchoseById(Integer.valueOf(replies.get(i).getTid()));
                    if (schose.getAnswer().equals(replies.get(i).getSelected())){
                        replies.get(i).setScore("3");
                    }else {
                        replies.get(i).setScore("0");
                    }
                }else if (type.equals("multiple")){
                    Multiple multiple = multipleDao.getMultipleById(Integer.valueOf(replies.get(i).getTid()));
                    if (multiple.getAnswer().equals(replies.get(i).getSelected())){
                        replies.get(i).setScore("5");
                    }else {
                        replies.get(i).setScore("0");
                    }
                }
                replyDao.addReply(replies.get(i));
            }
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public List<Reply> getReplyByPidWithUid(Integer pid, Integer uid,String type) {
        return replyDao.getReplyByPidWithUid(pid,uid,type);
    }
}
