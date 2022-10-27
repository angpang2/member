package com.icia.member.DTO;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class MemberDTO {
    private Long id;
    private String memberEmail;
    private String memberPassword;
    private String memberName;
    private int memberAge;
    private String memberMobile;
}