package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.AccDTO;
import org.nsy.DTO.LoginDTO;

public interface AccService {

	// 회원가입
	public void membership(AccDTO adto);
	
	// 로그인 체크
	public int logincheck(LoginDTO ldto);
	
	// 멤버 리스트
	public ArrayList<AccDTO> list();
	
	// 회원정보 상세
	public AccDTO detail(AccDTO adto);
	
	// 회원 탈퇴
	public void leave(AccDTO adto);
	
	// 회원 수정
	public void modify(AccDTO adto);
}
