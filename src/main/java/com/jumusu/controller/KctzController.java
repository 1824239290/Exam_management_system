package com.jumusu.controller;

import com.jumusu.domain.Kctz;
import com.jumusu.service.KctzService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/Kctz")
public class KctzController {
    @Autowired
    private KctzService kctzService;

    @GetMapping
    public Res getAllKctz(){
        List<Kctz> list = kctzService.getAllKctz();
        if (!list.isEmpty()){
            Res res = new Res(list,200,"查询成功");
            return res;
        }
        return new Res(null,500,"查询失败");
    }
    @GetMapping("/{nid}")
    public Res  selectById(@PathVariable Integer nid){
        Kctz  kctz=kctzService.selectById(nid);
        if (kctz!=null){
            Res res=new Res(kctz,200,"获取信息成功！");
            return res;
        }
        return new Res(null,500,"获取信息失败！");
    }
    @PostMapping
    public Res saveKctz(@RequestBody Kctz kctz) {
        boolean b = kctzService.saveKctz(kctz);

        if (b == true){
            Res res = new Res(null,200,"插入成功");
            return res;
        }return new Res(null,500,"插入失败");


    }

    @PutMapping
    public Res updateKctz(@RequestBody Kctz kctz) {
        boolean b = kctzService.updateKctz(kctz);
        if (b == true){
            Res res = new Res(null,200,"修改成功");
            return res;
        }return new Res(null,500,"修改失败");

    }
    @DeleteMapping("/{nid}")
    public Res deleteKctz(@PathVariable Integer nid) {
        boolean b = kctzService.deleteKctz(nid);
        if (b == true){
            Res res = new Res(null,200,"删除成功");
            return res;
        }return new Res(null,500,"删除失败");

    }
}
