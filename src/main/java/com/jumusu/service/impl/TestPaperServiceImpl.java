package com.jumusu.service.impl;

import com.jumusu.dao.TestPaperDao;
import com.jumusu.dao.TestQDao;
import com.jumusu.domain.TestPaper;
import com.jumusu.domain.TestPaperDetail;
import com.jumusu.service.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:19
 */
@Service
public class TestPaperServiceImpl implements TestPaperService {
    @Autowired
    private TestPaperDao testPaperDao;
    @Autowired
    private TestQDao testQDao;

    public List<TestPaper> getAll() {
        return testPaperDao.getAll();
    }

    public boolean addTestPaper(String tpname, String qid) {
        System.out.println(tpname+"-------"+qid);
        boolean b = testPaperDao.addTestPaper(tpname);
        String tpid = testPaperDao.getTpid(tpname);
        if (b){
            List<String> judgmentId = testQDao.getRand15Judgment(qid);
            List<String> multipleId = testQDao.getRand15Multiple(qid);
            List<String> schoseId = testQDao.getRand20Schose(qid);
            System.out.println("judgmentId ="+ judgmentId);
            System.out.println("multipleId ="+ multipleId);
            System.out.println("schoseId ="+ schoseId);
            boolean j = false,m = false,s = false;
            for(int i = 0;i<judgmentId.size();i ++){
                 j = testQDao.addTestQ(tpid,judgmentId.get(i),"judgment");
                System.out.println(j);
            }
            for(int i = 0;i<multipleId.size();i ++){
                m = testQDao.addTestQ(tpid,multipleId.get(i),"multiple");
                System.out.println(m);
            }
            for(int i = 0;i<schoseId.size();i ++){
                s = testQDao.addTestQ(tpid,schoseId.get(i),"schose");
                System.out.println(s);
            }
            if ((j == true && m) == s){
                return true;
            }
        }
        return false;
    }

    public int deleteTestPaper(String pid) {
        int i = testPaperDao.deleteTestPaper(pid);
        int j = testQDao.deleteTestQ(pid);
        if (i!=0&&j!=0){
            return i+j;
        }
        return 0;
    }

    public List<TestPaperDetail> getTestPaperDetail(Integer tpid) {
        List<TestPaperDetail> schoseDetail = testPaperDao.getSchoseDetail(tpid);
        List<TestPaperDetail> multipleDetail = testPaperDao.getMultipleDetail(tpid);
        List<TestPaperDetail> judgmentDetail = testPaperDao.getJudgmentDetail(tpid);
        List<TestPaperDetail> details=new ArrayList<TestPaperDetail>();
        details.addAll(schoseDetail);
        details.addAll(multipleDetail);
        details.addAll(judgmentDetail);
        return details;
    }

    public List<TestPaper> getTestPaperByUser(Integer uid) {
        return testPaperDao.getTestPaperByUser(uid);
    }

    public TestPaper getNameById(Integer pid) {
        return testPaperDao.getNameById(pid);
    }

    public List<TestPaper> getTestPaperByUserWithScore(Integer uid) {
        return testPaperDao.getTestPaperByUserWithScore(uid);
    }

}
