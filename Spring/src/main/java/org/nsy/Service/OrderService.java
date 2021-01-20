package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.Criteria;
import org.nsy.DTO.CustomDTO;
import org.nsy.DTO.sub_orderDTO;

public interface OrderService {

	// 정기구독 
	public void sub_order(sub_orderDTO sdto);
	
	// 주문제작
	public void customOrder(CustomDTO cdto);
	
	// 정기구독 리스트
	public ArrayList<sub_orderDTO> list(Criteria cri);
	
	// 주문제작 리스트
	public ArrayList<CustomDTO> customList();
	
	// 총 게시글 수
	public int getTotal();
}
