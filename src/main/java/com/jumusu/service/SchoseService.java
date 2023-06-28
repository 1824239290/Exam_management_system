package com.jumusu.service;

import com.jumusu.domain.Schose;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SchoseService {
    List<Schose> getSchoseAll();
    Schose getSchoseById(Integer tid);
    int insertSchose(Schose schose);
    int updateSchoseById(Schose schose);
    int deleteSchoseById(Integer tid);
    List<Schose> getTestPaperSchose(Integer pid);
}
