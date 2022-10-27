package com.icia.member.controller;

import com.icia.member.DTO.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String svae(@ModelAttribute MemberDTO memberDTO) {
        boolean saveResult = memberService.save(memberDTO);
        if (saveResult) {
            return "memberLogin";
        } else {
            return "index";
        }
    }

        @GetMapping("/login")
        public String loginForm () {
            return "memberLogin";
        }



//        @PostMapping("/login")
//        public String login(@RequestParam("memberEmail")String memberEmail , @RequestParam("memberPassword")String memberPassword){
//
//        }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session , Model model){
        boolean loginResult = memberService.login(memberDTO);
        if(loginResult){
//            세션에 로그인한 사용자의 이메일을 저장
            session.setAttribute("loginEmail",memberDTO.getMemberEmail());
            model.addAttribute("modelEmail",memberDTO.getMemberEmail());
            return "memberMain";
        }else {
            return "index";
        }




    }

    @GetMapping("/members")
    public String members(Model model){
        List<MemberDTO> result = memberService.memberList();
        model.addAttribute("memberList",result);
        return "memberList";
    }

    @GetMapping("/member")
    public String member(@RequestParam("id")Long Id , Model model ,HttpSession session){
        MemberDTO findResult = memberService.find(Id);
        model.addAttribute("member",findResult);
        session.setAttribute("session",findResult);
        return "memberDetail";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id")Long clickedId , Model model){
        List<MemberDTO> result = memberService.del(clickedId);
        model.addAttribute("memberList",result);
        //return "memberList";
        //1. 삭제 후 목록을 DB에서 가져오고 memberList.jsp로 간다.
        //2. redirect 방식을 이용하여 /members 주소 요청
        return "redirect:/members";
    }








}
