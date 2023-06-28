package com.jumusu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: 橘木苏_Oc
 * @Description:
 * @Date 2023/6/7 15:34
 */
@Controller
@ResponseBody
public class IndexController {
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public ModelAndView index(){
        return new ModelAndView("/index.jsp");
    }
}
