package com.jumusu.controller;

import com.jumusu.domain.Multiple;
import com.jumusu.service.MultipleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/multiple")
public class MultipleController {
    @Autowired
    private MultipleService multipleService;
    @GetMapping
    public Res getAllMultiple(){
        List<Multiple> multipleAll = multipleService.getMultipleAll();
        if (multipleAll.isEmpty()){
            Res res=new Res(null,500,"获取多选题列表失败！");
            return res;
        }else {
            Res res=new Res(multipleAll,200,"获取多选题列表成功！");
            return res;
        }
    }
    @GetMapping("/{mid}")
    public Res getMultipleById(@PathVariable Integer mid){
        Multiple multiple = multipleService.getMultipleById(mid);
        if (multiple==null){
            Res res =new Res(null,500,"获取多选题详情失败！");
            return res;
        }else {
            Res res=new Res(multiple,200,"获取多选题详情成功！");
            return res;
        }
    }
    @PostMapping
    public Res insertMultiple(@RequestBody Multiple multiple){
        int i = multipleService.insertMultiple(multiple);
        if (i==0){
            Res res=new Res(null,500,"添加多选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"添加多选题成功！");
            return res;
        }
    }
    @PutMapping
    public Res updateMultiple(@RequestBody Multiple multiple){
        int i = multipleService.updateMultipleById(multiple);
        if (i==0){
            Res res=new Res(null,500,"修改多选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"修改多选题成功！");
            return res;
        }
    }
    @DeleteMapping("/{mid}")
    public Res deleteMultiple(@PathVariable Integer mid){
        int i = multipleService.deleteMultipleById(mid);
        if (i==0){
            Res res=new Res(null,500,"删除多选题失败！");
            return res;
        }else {
            Res res=new Res(i,200,"删除多选题成功！");
            return res;
        }
    }
    @GetMapping("/pid={pid}")
    public Res getTestPaperMultiple(@PathVariable Integer pid){
        List<Multiple> multipleList = multipleService.getTestPaperMultiple(pid);
        if (multipleList.isEmpty()){
            Res res=new Res(null,500,"获取多选题失败！");
            return res;
        }else {
            Res res=new Res(multipleList,200,"获取多选题成功！");
            return res;
        }
    }
}
