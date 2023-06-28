package com.jumusu.controller;

import com.jumusu.domain.Judgment;
import com.jumusu.service.JudgmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/judgment")
public class JudgmentController {
    @Autowired
    private JudgmentService judgmentService;
    @GetMapping
    public Res getAllJudgment(){
        List<Judgment> judgmentAll = judgmentService.getJudgmentAll();
        if (judgmentAll.isEmpty()){
            Res res=new Res(null,500,"获取判断题列表失败！");
            return res;
        }else {
            Res res=new Res(judgmentAll,200,"获取判断题列表成功！");
            return res;
        }
    }
    @GetMapping("/{jid}")
    public Res getJudgmentById(@PathVariable Integer jid){
        Judgment judgment = judgmentService.getJudgmentById(jid);
        if (judgment==null){
            Res res=new Res(null,500,"获取判断题详情失败！");
            return res;
        }else {
            Res res=new Res(judgment,200,"获取判断题详情成功！");
            return res;
        }
    }
    @PostMapping
    public Res insertJudgment(@RequestBody Judgment judgment){
        int i = judgmentService.insertJudgment(judgment);
        if (i==0){
            Res res=new Res(null,500,"添加判断题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"添加判断题成功！");
            return res;
        }
    }
    @PutMapping
    public Res updateJudgment(@RequestBody Judgment judgment){
        int i = judgmentService.updateJudgmentById(judgment);
        if (i==0){
            Res res=new Res(null,500,"修改判断题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"修改判断题成功！");
            return res;
        }
    }
    @DeleteMapping("/{jid}")
    public Res deleteJudgment(@PathVariable Integer jid){
        int i = judgmentService.deleteJudgmentById(jid);
        if (i==0){
            Res res=new Res(null,500,"删除判断题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"删除判断题成功！");
            return res;
        }
    }
    @GetMapping("/pid={pid}")
    public Res getTestPaperJudgment(@PathVariable Integer pid){
        List<Judgment> judgmentList = judgmentService.getTestPaperJudgment(pid);
        if (judgmentList.isEmpty()){
            Res res=new Res(null,500,"获取判断题失败！");
            return res;
        }else {
            Res res=new Res(judgmentList,200,"删除判断题成功！");
            return res;
        }
    }
}
