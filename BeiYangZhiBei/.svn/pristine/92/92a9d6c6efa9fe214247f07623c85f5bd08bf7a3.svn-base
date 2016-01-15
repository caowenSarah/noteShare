package cn.edu.tju.service.goods;

import java.util.List;
import java.util.Map;

import cn.edu.tju.domain.Goods;
import cn.edu.tju.util.Pager;

public interface GoodsService {
	
	
	/**
	 * 分页、多条件查询商品
	 * @param pageInfo
	 * @param conditions
	 */
	void getGoodssByPage(final Pager<Goods> pageInfo,Map<String,Object> conditions);
	
	/**
	 * 根据ID获取商品
	 * @param id
	 * @return
	 */
	Goods getGoodsById(int id);
	/**
	 * 根据name获取商品
	 * @param id
	 * @return
	 */
	List<Goods> getGoodsByName( String name);
	
	
	/**
	 * 插入商品实体
	 * @param goods
	 * @return
	 */
	int saveGoods(Goods goods);

}
