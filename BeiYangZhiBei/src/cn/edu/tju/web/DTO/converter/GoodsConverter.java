package cn.edu.tju.web.DTO.converter;

import cn.edu.tju.domain.Goods;
import cn.edu.tju.web.DTO.GoodsDTO;

public class GoodsConverter {
	
	/**
	 * 将Good的domain实体转换为DTO实体
	 * @param note
	 * @return
	 */

	
	
	public static GoodsDTO domainToDTO(Goods goods){
		GoodsDTO dto = new GoodsDTO();
		dto.setId(goods.getId());
		dto.setName(goods.getName());
		dto.setAccount_id(goods.getAccount_id());
		dto.setDescription(goods.getDescription());
		dto.setExchange_goods(goods.getExchange_goods());
		dto.setPrice(goods.getPrice());
		dto.setType(goods.getType());
	
		return dto;
	}
	
}
