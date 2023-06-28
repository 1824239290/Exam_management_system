package com.jumusu.service.impl;


import com.jumusu.config.SpringConfig;
import com.jumusu.service.TestPaperService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class TestPaperServiceImplTest {
    @Autowired
    TestPaperService testPaperService;
    @Test
    public void testGetTestPaperDetail() {
        System.out.println(testPaperService.getTestPaperDetail(1));
    }
}