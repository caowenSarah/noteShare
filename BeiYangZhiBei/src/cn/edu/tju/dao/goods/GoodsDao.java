package cn.edu.tju.dao.goods;

import java.util.List;
import java.util.Map;
import cn.edu.tju.domain.Goods;
import cn.edu.tju.util.Pager;

/**
 * 商品访问接口
 * 
 * @author Administrator
 * 
 */

public interface GoodsDao {
	/**
	 * 按照给定的查询条件和分页条件查询所有的Goods
	 * 
	 * @param pageInfo
	 *            :带分页的查询结果集，查询结果集在pageInfo的results属性里
	 * @param conditions
	 *            :Map型查询条件集
	 */

	void getByPage(final Pager<Goods> pageInfo, Map<String, Object> conditions);

	/**
	 * 查找全部商品
	 * 
	 * @return 商品集合
	 */
	List<Goods> getGoods();

	/**
	 * 按照id查询
	 * 
	 * @param id
	 * @return
	 */
	Goods getById(int id);

	/**
	 * 按照商品的名字查找Goods
	 * 
	 * @param userName
	 * @return
	 */
	List<Goods> getByname(String name);

	/**
	 * 插入新的Goods
	 * 
	 * @param Goods
	 * @return
	 */
	int save(Goods Goods);

	/**
	 * 更新Goods
	 * 
	 * @param Goods
	 */
	void update(Goods Goods);

	/**
	 * 按照指定id删除Goods
	 * 
	 * @param id
	 *            :GoodsId
	 * @return:如果成功，则返回被删除的用户ID
	 */
	int deleteById(int id);

	/**
	 * 按照指定对象删除Goods
	 * 
	 * @param acc
	 * @return：如果成功，则返回被删除的用户ID
	 */
	int delete(Goods acc);

}
