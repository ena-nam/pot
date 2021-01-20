package org.nsy.mapper;

import java.util.ArrayList;

import org.nsy.DTO.Criteria;
import org.nsy.DTO.CustomDTO;
import org.nsy.DTO.sub_orderDTO;

public interface OrderDAO {

	// 정기주문
	public void sub_order(sub_orderDTO sdto);
	
	// 주문제작
	public void customOrder(CustomDTO cdto);
	
	// 정기구독 리스트
	public ArrayList<sub_orderDTO> list(Criteria cri);
	
	// 주문제작 리스트
	public ArrayList<CustomDTO> customList();
	
	public int getTotal();
}
