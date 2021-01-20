package org.nsy.controller;

import org.nsy.DTO.productDTO;
import org.nsy.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	ProductService ps;
	
	// 메인 이동
	@GetMapping("/index")
	public void indexmove() {}
	
	// 꽃다발 탭으로 이동하며 list 호출
	@GetMapping("/flowers")
	public void flowersmove(Model model) {
		model.addAttribute("list", ps.list());
	}
	
	// 이벤트 탭 이동
	@GetMapping("/event")
	public void eventmove() {}
	
	// 상세 페이지 이동
	@GetMapping("/detail")
	public void detailmove(productDTO pdto, Model model) {
		model.addAttribute("detail", ps.detail(pdto));
	}
	
}

