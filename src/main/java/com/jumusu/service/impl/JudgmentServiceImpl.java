package com.jumusu.service.impl;

import com.jumusu.dao.JudgmentDao;
import com.jumusu.domain.Judgment;
import com.jumusu.service.JudgmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JudgmentServiceImpl implements JudgmentService {
    @Autowired
    private JudgmentDao judgmentDao;
    public List<Judgment> getJudgmentAll() {
        return judgmentDao.getJudgmentAll();
    }

    public Judgment getJudgmentById(Integer jid) {
        return judgmentDao.getJudgmentById(jid);
    }

    public int insertJudgment(Judgment judgment) {
        return judgmentDao.insertJudgment(judgment);
    }

    public int updateJudgmentById(Judgment judgment) {
        return judgmentDao.updateJudgmentById(judgment);
    }

    public int deleteJudgmentById(Integer jid) {
        return judgmentDao.deleteJudgmentById(jid);
    }

    public List<Judgment> getTestPaperJudgment(Integer pid) {
        return judgmentDao.getTestPaperJudgment(pid);
    }
}
