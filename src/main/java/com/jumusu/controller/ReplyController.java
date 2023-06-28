package com.jumusu.controller;

import com.jumusu.domain.Reply;
import com.jumusu.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@ResponseBody
@RequestMapping("/reply")
public class ReplyController {
    @Autowired
    private ReplyService replyService;
    @PostMapping
    public Res addReply(@RequestBody List<Reply> replies){
        boolean i = replyService.addReply(replies);
        return new Res(null,200,"交卷成功！");
    }
    @GetMapping("/getselected")
    public Res getReplyByPidWithUid(@RequestParam(value="pid", required=true)Integer pid,@RequestParam(value="uid", required=true)Integer uid,@RequestParam(value="type", required=true)String type){
        List<Reply> replyList = replyService.getReplyByPidWithUid(pid, uid, type);
        return new Res(replyList,200,"获取成功！");
    }
}
