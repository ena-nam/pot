package org.nsy.controller;

import org.nsy.DTO.CustomDTO;
import org.nsy.DTO.sub_orderDTO;
import org.nsy.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrderService os;
	
	// 주문 페이지 이동
	@GetMapping("/order")
	public void ordermove() {}
	
	// 주문 폼 이동
	@GetMapping("/sub_order")
	public void sub_orderMove() {}
	
	// 정기구독 폼 이동
	@GetMapping("/subscription")
	public void subscriptionMove() {}
	
	// 주문완료 페이지
	@GetMapping("/complete")
	public void complete() {}
	
	// 구독신청 폼
	@PostMapping("/sub_order")
	public String sub_order(sub_orderDTO sdto) {
		os.sub_order(sdto);
		return "redirect:/order/complete";
	}
	
	// 주문제작 폼
	@PostMapping("/customOrder")
	public String customOrder(CustomDTO cdto) {
		os.customOrder(cdto);
		return "redirect:/order/complete";
	}
	
	@GetMapping("/order_order")
	public void order_orderMove() {}
	
}
