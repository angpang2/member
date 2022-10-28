package com.icia.member.service;

import com.icia.member.DTO.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
       int saveResult = memberRepository.save(memberDTO);
        if(saveResult!=0){
            return true;
        }else {
            return false;
        }
    }

    public boolean login(MemberDTO memberDTO) {

        MemberDTO member = memberRepository.login(memberDTO);
        if(member != null){
            return true;
        }else {
            return false;
        }
    }

    public List<MemberDTO> memberList() {
        return memberRepository.memberList();

    }

    public MemberDTO find(Long Id) {
        return memberRepository.find(Id);
    }


    public  List<MemberDTO> del(Long clickedId) {
        return memberRepository.del(clickedId);
    }


    public MemberDTO get(String memberEmail) {
       return memberRepository.get(memberEmail);
    }

    public boolean up(MemberDTO memberDTO) {
       int result = memberRepository.up(memberDTO);
       if(result>0){
           return true;
       }else {
           return false;
       }
    }

    public void check(String memberEmail) {
        memberRepository.check(memberEmail);
    }
}
