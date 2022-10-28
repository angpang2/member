package com.icia.member.repository;

import com.icia.member.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }


//    public MemberDTO login(String memberEmail, String memberPassword) {
//        MemberDTO memberDTO = new MemberDTO();
//        memberDTO.setMemberEmail(memberEmail);
//        memberDTO.setMemberPassword(memberPassword);
//        return sql.selectOne("Member.login",memberDTO);
//    }

    public List<MemberDTO> memberList() {
        return sql.selectList("Member.memberList");
    }

    public MemberDTO find(Long Id) {
        return sql.selectOne("Member.find",Id);
    }


    public List<MemberDTO> del(Long clickedId) {
       int result = sql.delete("Member.del",clickedId);
        if (result==1){
            return sql.selectList("Member.memberList");
        }else {
            return null;
        }
    }


    public MemberDTO get(String memberEmail) {
        return sql.selectOne("Member.get",memberEmail);
    }

    public int up(MemberDTO memberDTO) {
      return sql.update("Member.up",memberDTO);
    }

    public void check(String memberEmail) {
        sql.selectOne("Member.check",memberEmail);
    }
}





