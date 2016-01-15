package cn.edu.tju.service.goods.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.tju.dao.goods.GoodsDao;
import cn.edu.tju.dao.note.NoteDao;
import cn.edu.tju.domain.Goods;
import cn.edu.tju.service.goods.GoodsService;
import cn.edu.tju.util.Pager;

@Service
public class GoodsServiceImp implements GoodsService {
	
	@Autowired
	private GoodsDao goodsDao;

	public void getGoodssByPage(Pager<Goods> pageInfo,
			Map<String, Object> conditions) {
		goodsDao.getByPage(pageInfo, conditions);
		
	}

	public Goods getGoodsById(int id) {
		return goodsDao.getById(id);
	}

	public List<Goods> getGoodsByName(String name) {
		return goodsDao.getByname(name);
	}

	public int saveGoods(Goods goods) {
		return goodsDao.save(goods);
		
	}

}
