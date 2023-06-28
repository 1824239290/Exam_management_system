package com.jumusu.service;

import com.jumusu.domain.TestPaper;
import com.jumusu.domain.TestPaperDetail;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:18
 */
public interface TestPaperService {
    List<TestPaper> getAll();
    boolean addTestPaper(String tpname, String qid);
    int deleteTestPaper(String pid);
    List<TestPaperDetail> getTestPaperDetail(Integer tpid);
    List<TestPaper> getTestPaperByUser(Integer uid);
    TestPaper getNameById( Integer pid);
    List<TestPaper> getTestPaperByUserWithScore(Integer uid);
}
