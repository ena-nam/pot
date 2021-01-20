package org.nsy.Service;

import java.util.ArrayList;

import org.nsy.DTO.productDTO;

public interface ProductService {

	// 꽃다발 리스트
	public ArrayList<productDTO> list();
	
	// 리스트 디테일
	public productDTO detail(productDTO pdto);
	
	// 새 상품 등록
	public void newItem(productDTO pdto);
	
	// 수정
	public void modify(productDTO pdto);
	
	// 삭제
	public void delete(productDTO pdto);
}
