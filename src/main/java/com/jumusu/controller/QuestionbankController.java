package com.jumusu.controller;

import com.jumusu.domain.Questionbank;
import com.jumusu.service.QuestionbankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/Qustionbanks")
public class QuestionbankController {
    @Autowired
    private QuestionbankService questionbankService;
    @GetMapping
    public Res getAll(){
        List<Questionbank> list = questionbankService.getAll();
        if (!list.isEmpty()){
            Res res = new Res(list,200,"查询成功");
            return res;
        }
        return new Res(null,500,"查询失败");
    }
    @PostMapping
    public Res saveQuestionbank(@RequestBody Questionbank questionbank){
        System.out.println("saveQ执行："+questionbank);
        boolean i = questionbankService.saveQustionbank(questionbank);
        if (i == true){
            return new Res(null,200,"添加成功");
        }
        return new Res(null,500,"添加失败");
    }
    @DeleteMapping("/{qid}")
    public Res deleteQuestionbank(@PathVariable Integer qid){
        boolean i = questionbankService.deleteQuestionbankById(qid);
        if (i == true){
            return new Res(null,200,"删除成功");
        }
        return new Res(null,500,"删除失败");
    }
}
