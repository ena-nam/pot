package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.Criteria;
import org.nsy.DTO.CustomDTO;
import org.nsy.DTO.sub_orderDTO;
import org.nsy.mapper.OrderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDAO odao;
	
	// 정기주문
	public void sub_order(sub_orderDTO sdto) {
		odao.sub_order(sdto);		
	}
	
	// 주문제작
	public void customOrder(CustomDTO cdto) {
		odao.customOrder(cdto);
	}
	
	// 정기구독 리스트
	public ArrayList<sub_orderDTO> list(Criteria cri) {
		return odao.list(cri);
	}
	
	// 주문제작 리스트
	public ArrayList<CustomDTO> customList() {
		return odao.customList();
	}
	
	// 총 게시글 수
	public int getTotal() {
		return odao.getTotal();
	}
}
