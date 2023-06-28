package com.jumusu.service.impl;

import com.jumusu.controller.Res;
import com.jumusu.dao.QuestionbankDao;
import com.jumusu.domain.Questionbank;
import com.jumusu.service.QuestionbankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QustionbankServiceImpl implements QuestionbankService {
    @Autowired
    private QuestionbankDao questionbankDao;

    /**
     * 查询题库所有信息
     * @return 返回List<Questionbank>
     */
    public List<Questionbank> getAll() {
        List<Questionbank> list = questionbankDao.getAll();
        return list;
    }

    /**
     * 保存题库
     * @param questionbank
     * @return
     */
    public boolean saveQustionbank(Questionbank questionbank) {
        return questionbankDao.saveQuestionbank(questionbank);
    }

    /**
     * 删除题库
     * @param qid
     * @return
     */
    public boolean deleteQuestionbankById(Integer qid){
        return questionbankDao.deleteQuestionbankById(qid);
    }
}
