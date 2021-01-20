package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.AccDTO;
import org.nsy.DTO.LoginDTO;
import org.nsy.mapper.AccDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccServiceImpl implements AccService{

	@Autowired
	AccDAO adao;
	
	// 회원가입
	public void membership(AccDTO adto) {
		adao.membership(adto);
	}
	
	// 로그인 체크
	public int logincheck(LoginDTO ldto) {
		return adao.logincheck(ldto);
	}
	
	// 회원 리스트
	public ArrayList<AccDTO> list() {
		return adao.list();
	};
	
	// 회원정보 상세
	public AccDTO detail(AccDTO adto) {
		return adao.detail(adto);
	}
	
	// 회원 탈퇴
	public void leave(AccDTO adto) {
		adao.leave(adto);
	}

	// 회원 수정
	public void modify(AccDTO adto) {
		adao.modify(adto);
	}
}
