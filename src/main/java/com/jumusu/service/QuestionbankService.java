package com.jumusu.service;

import com.jumusu.controller.Res;
import com.jumusu.domain.Questionbank;

import java.util.List;

public interface QuestionbankService {
    public List<Questionbank> getAll();
    public boolean saveQustionbank(Questionbank questionbank);
    public boolean deleteQuestionbankById(Integer qid);
}
