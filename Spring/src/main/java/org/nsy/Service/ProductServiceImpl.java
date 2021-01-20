package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.productDTO;
import org.nsy.mapper.ProductDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO pdao;
	
	// 꽃다발 리스트
	public ArrayList<productDTO> list() {
		return pdao.list();
	}
	
	// 상품 디테일 열람
	public productDTO detail(productDTO pdto) {
		return pdao.detail(pdto);
	}
	
	// 상품 등록
	public void newItem(productDTO pdto) {
		pdao.newItem(pdto);
	}
	
	// 상품 수정
	public void modify(productDTO pdto) {
		pdao.modify(pdto);
	}
	
	// 상품 삭제
	public void delete(productDTO pdto) {
		pdao.delete(pdto);
	}

}
