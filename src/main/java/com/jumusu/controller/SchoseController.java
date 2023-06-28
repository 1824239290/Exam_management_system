package com.jumusu.controller;

import com.jumusu.domain.Schose;
import com.jumusu.service.SchoseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/schose")
public class SchoseController {
    @Autowired
    SchoseService schoseService;
    @GetMapping
    public Res getAllSchose(){
        List<Schose> schoses=schoseService.getSchoseAll();
        if (schoses.isEmpty()){
            Res res = new Res(null, 500, "获取单选题列表失败！");
            return res;
        }else {
            Res res = new Res(schoses, 200, "获取单选题列表成功！");
            return res;
        }
    }
    @GetMapping("/{tid}")
    public Res getSchoseById(@PathVariable Integer tid){
        Schose schose=schoseService.getSchoseById(tid);
        if (schose==null){
            Res res = new Res(null, 500, "获取单选题详情失败！");
            return res;
        }else {
            Res res = new Res(schose, 200, "获取单选题详情成功！");
            return res;
        }
    }
    @PostMapping
    public Res insertSchose(@RequestBody Schose schose){
        int i = schoseService.insertSchose(schose);
        if (i==0){
            Res res=new Res(null,500,"添加单选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"添加单选题成功！");
            return res;
        }
    }
    @PutMapping
    public Res updateSchose(@RequestBody Schose schose){
        int i = schoseService.updateSchoseById(schose);
        if (i==0){
            Res res=new Res(null,500,"修改单选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"修改单选题成功！");
            return res;
        }
    }
    @DeleteMapping("/{tid}")
    public Res deleteSchose(@PathVariable Integer tid){
        int i = schoseService.deleteSchoseById(tid);
        if (i==0){
            Res res=new Res(null,500,"删除单选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"删除单选题成功！");
            return res;
        }
    }
    @GetMapping("/pid={pid}")
    public Res getTestPaperSchose(@PathVariable Integer pid){
        List<Schose> schoseList = schoseService.getTestPaperSchose(pid);
        if (schoseList.isEmpty()){
            return  new Res(null,500,"获取单选题失败！");
        }else {
            return new Res(schoseList,200,"获取单选题成功！");
        }
    }
}
