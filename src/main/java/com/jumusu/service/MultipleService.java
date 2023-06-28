package com.jumusu.service;

import com.jumusu.domain.Multiple;

import java.util.List;

public interface MultipleService {
    List<Multiple> getMultipleAll();
    Multiple getMultipleById(Integer mid);
    int insertMultiple(Multiple multiple);
    int updateMultipleById(Multiple multiple);
    int deleteMultipleById(Integer mid);
    List<Multiple> getTestPaperMultiple(Integer pid);
}
