package org.nsy.controller;

import java.io.File;
import java.util.UUID;

import org.nsy.DTO.Criteria;
import org.nsy.DTO.pageDTO;
import org.nsy.DTO.productDTO;
import org.nsy.Service.AccService;
import org.nsy.Service.OrderService;
import org.nsy.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	OrderService os;
	
	@Autowired
	AccService as;
	
	@Autowired
	ProductService ps;
	
	// 관리자 메뉴
	@GetMapping("/menu")
	public void adminmove() {}
	
	// 주문 관리(구독)
	@GetMapping("/order")
	public void ordermove(Model model, Criteria cri) {
		model.addAttribute("order", os.list(cri));
		int total = os.getTotal();
		model.addAttribute("page", new pageDTO(cri, total));
	}
	
	// 주문제작 관리
	@GetMapping("/customorder")
	public void customordermove(Model model) {
		model.addAttribute("custom", os.customList());
	}
	
	// 회원 관리
	@GetMapping("/member")
	public void membermove(Model model) {
		model.addAttribute("member", as.list());
	}
	
	// 상품 관리
	@GetMapping("/product")
	public void productmove(Model model) {
		model.addAttribute("product", ps.list());
	}
	
	// 상품 등록 페이지 이동
	@GetMapping("/new")
	public void newmove() {}
	
	// 상품 등록
	@PostMapping("/new")
	public String newItem(productDTO pdto, MultipartFile uploadfile) {
		
		System.out.println("게시판 등록 옴 ");
		MultipartFile file = uploadfile;
		
		String fileName = file.getOriginalFilename();	// 파일 이름
		String uploadPath = "D:\\00-BACKUP\\workspace\\Spring\\src\\main\\webapp\\resources\\img";	// 파일 저장 경로
		UUID uuid = UUID.randomUUID();	// 랜덤값 생성
		
		// 파일 이름에 uuid로 생성한 랜덤값 추가하여 새로운 이름 생성
		fileName = uuid.toString() + "_" + file.getOriginalFilename();
		pdto.setPimage(fileName);	// DTO에 새롭게 만든 이름을 저장
		System.out.println(pdto.getPimage());
		
		// File(경로, 파일 이름)
		// uploadPath = /resources/img
		// fileName = uuid_originamFilename
		File uploadFile = new File(uploadPath, fileName);
		
		System.out.println(uploadFile);
		
		try {
			file.transferTo(uploadFile);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// DB 업로드
		ps.newItem(pdto);
		
		return "redirect:/admin/product";
	}
	
	
	// 상품 상세
	@GetMapping("/detail")
	public void detail(productDTO pdto, Model model) {
		model.addAttribute("detail", ps.detail(pdto));
	}
	
	// 상품 수정 페이지
	@GetMapping("/modify")
	public void modifymove(productDTO pdto, Model model) {
		model.addAttribute("modify", ps.detail(pdto));
	}
	
	// 상품 수정
	@PostMapping("/modify2")
	public String modify(productDTO pdto) {
		ps.modify(pdto);
		return "redirect:/admin/detail?pno="+pdto.getPno();
	}
	
	// 상품 삭제
	@GetMapping("/delete")
	public String delete(productDTO pdto) {
		ps.delete(pdto);
		return "redirect:/admin/product";
	}
	
}
