package com.jumusu.service;

import com.jumusu.domain.Judgment;

import java.util.List;

public interface JudgmentService {
    List<Judgment> getJudgmentAll();
    Judgment getJudgmentById(Integer jid);
    int insertJudgment(Judgment judgment);
    int updateJudgmentById(Judgment judgment);
    int deleteJudgmentById(Integer jid);
    List<Judgment> getTestPaperJudgment(Integer pid);
}
