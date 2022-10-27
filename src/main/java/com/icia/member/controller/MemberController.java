package com.icia.member.controller;

import com.icia.member.DTO.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String svae(@ModelAttribute MemberDTO memberDTO){
        boolean saveResult = memberService.save(memberDTO);
        if(saveResult){
            return "memberLogin";
        }else {
            return "index";
        }
    }



}
