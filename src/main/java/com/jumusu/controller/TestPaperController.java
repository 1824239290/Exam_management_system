package com.jumusu.controller;

import com.jumusu.domain.TestPaper;
import com.jumusu.domain.TestPaperDetail;
import com.jumusu.service.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/10 16:10
 */
@RestController
@ResponseBody
@RequestMapping("/testPaper")
public class TestPaperController {
    @Autowired
    private TestPaperService testPaperService;
    @PostMapping
    public Res addTestPaper(@RequestBody TestPaper testPaper){
        boolean b = testPaperService.addTestPaper(testPaper.getPname(), testPaper.getQid());
        if (b){
            return new Res(null,200,"生成成功");
        }
        return new Res(null,500,"生成失败");
    }
    @GetMapping
    public Res getAllTestPaper(){
        List<TestPaper> testPaperList = testPaperService.getAll();
        if (testPaperList.isEmpty()){
            return new Res(null,500,"获取试卷列表失败！");
        }else {
            return new Res(testPaperList,200,"获取试卷列表成功！");
        }
    }
    @DeleteMapping("/{pid}")
    public Res deleteTestPaper(@PathVariable String pid){
        int i = testPaperService.deleteTestPaper(pid);
        if (i!=0){
            return new Res(i,200,"删除试卷成功！");
        }else {
            return new Res(i,500,"删除试卷失败！");
        }
    }
    @GetMapping("/{tpid}")
    public Res getTestPaperDetail(@PathVariable Integer tpid){
        List<TestPaperDetail> details = testPaperService.getTestPaperDetail(tpid);
        if (details.isEmpty()){
            return new Res(null,500,"获取试题详情失败!");
        }else {
            return new Res(details,200,"获取试题详情成功！");
        }
    }
    @GetMapping("/uid={uid}")
    public Res getTestPaperByUser(@PathVariable Integer uid){
        List<TestPaper> paperList = testPaperService.getTestPaperByUser(uid);
        if (paperList.isEmpty()){
            return new Res(null,500,"获取试题失败!");
        }else {
            return new Res(paperList,200,"获取试题成功！");
        }
    }
    @GetMapping("/pid={pid}")
    public Res getNameById(@PathVariable Integer pid){
        TestPaper testPaper = testPaperService.getNameById(pid);
        if (testPaper==null){
            return new Res(null,500,"获取试题失败！");
        }else {
            return new Res(testPaper,200,"获取试题成功！");
        }
    }
    @GetMapping("/analysis/{uid}")
    public Res getTestPaperByUserWithScore(@PathVariable Integer uid){
        List<TestPaper> testPaperList = testPaperService.getTestPaperByUserWithScore(uid);
        if (testPaperList.isEmpty()){
            return new Res(null,500,"获取解析失败！");
        }else {
            return new Res(testPaperList,200,"获取解析成功！");
        }
    }
}
