package org.nsy.mapper;

import java.util.ArrayList;

import org.nsy.DTO.productDTO;

public interface ProductDAO {

	// 꽃다발 리스트
	public ArrayList<productDTO> list();
	
	public productDTO detail(productDTO pdto);
	
	public void newItem(productDTO pdto);
	
	public void modify(productDTO pdto);
	
	public void delete(productDTO pdto);
}
