package com.goldDog.service.bum;

import javax.servlet.http.HttpServletResponse;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.MemberVO;

public interface memberService {

		//회원 가입 (추가)
		public int addMember(MemberVO member);
		
		//회원가입 (주소)
		public int addaddress(AddressVO address, int m_no);
		
		//회원가입 (권한)
		public int addAuth(String auth, int m_no);
		
		/* id, pw 확인
		public int idPwCheck(MemberVO member); */
		
		// 회원 정보 가져오기
		public MemberVO getMember(String m_id);
		
		// 회원 정보(m_no) 가져오기
		public int getMno(String m_id);
		
		// 회원 정보 수정 처리
		public int ModifyMember(MemberVO member);
		
		// 회원 탈퇴 처리
		public int deleteMember(MemberVO member);
		
		
		//이메일발송
		public void sendEmail(MemberVO vo, String div) throws Exception;

		//비밀번호찾기
		public void findPw(HttpServletResponse resp, MemberVO vo) throws Exception;
		
		//
		public int idCheck(String m_id);
		
		public int updatePw(MemberVO member);
		
		// 회원 정보 가져오기
		public MemberVO getMemberEmail(String m_id);

	
}
