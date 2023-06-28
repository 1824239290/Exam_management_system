package com.jumusu.dao;


import com.jumusu.config.SpringConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class TestPaperDaoTest{
    @Autowired
    TestPaperDao testPaperDao;
    @Test
    public void testGetSchoseDetail() {
        System.out.println(testPaperDao.getSchoseDetail(1));
    }

    public void testGetMultipleDetail() {
    }

    public void testGetJudgmentDetail() {
    }
}