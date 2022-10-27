package com.icia.member.repository;

import com.icia.member.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}





