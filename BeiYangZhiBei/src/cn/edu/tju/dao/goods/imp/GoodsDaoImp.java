package cn.edu.tju.dao.goods.imp;

import java.util.List;
import java.util.Map;
import java.util.Set;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.tju.dao.goods.GoodsDao;
import cn.edu.tju.domain.Goods;
import cn.edu.tju.util.Pager;

@Repository
public class GoodsDaoImp implements GoodsDao {

	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {

		return sessionFactory.getCurrentSession();
	}

	public void getByPage(Pager<Goods> pageInfo, Map<String, Object> conditions) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Criteria cri = session.createCriteria(Goods.class);
		// 处理查询条件
		if (conditions != null) {
			Set<String> keys = conditions.keySet();
			int id = -1;
			int userName = -1;
			for (String key : keys) {
				if (key.equals("id")) {
					id = (Integer) conditions.get(key);
				} else if (key.equals("userName")) {

					userName = (Integer) conditions.get(key);
				} else {
					if (!conditions.get(key).equals("")) {
						cri.add(Restrictions.like(key, conditions.get(key)
								.toString(), MatchMode.ANYWHERE));
					}
				}
			}
			if (id != -1) {
				cri.add(Restrictions.eq("id", id));
			}
			if (userName != -1) {
				cri.add(Restrictions.eq("userName", userName));
			}

		}
		// 获取数据总条数
		Object obj = cri.setProjection(Projections.rowCount()).uniqueResult();
		int rowCount = Integer.parseInt(obj.toString());
		cri.setProjection(null);

		// 处理排序
		if (pageInfo.getOrders() != null) {
			Set<String> keys = pageInfo.getOrders().keySet();
			for (String key : keys) {
				Order ord = null;
				if (pageInfo.getOrders().get(key)) {
					ord = Order.asc(key);
				} else {
					ord = Order.desc(key);
				}
				if (ord != null) {
					cri.addOrder(ord);
				}
			}
		}
		cri.setFirstResult((pageInfo.getPageIndex() - 1)
				* pageInfo.getPageSize());
		cri.setMaxResults(pageInfo.getPageSize());

		List<Goods> retList = cri.list();

		pageInfo.setTotalRecord(rowCount);
		pageInfo.setResults(retList);

	}

	public List<Goods> getGoods() {
		Session session = getSession();
		Criteria cri = session.createCriteria(Goods.class);
		List<Goods> list = cri.list();
		return list;
	}

	public Goods getById(int id) {
		Session session = getSession();
		Goods goods = (Goods) session.get(Goods.class, id);
		return goods;

	}

public List<Goods> getByname(String name) {
		Session session = getSession();
		Criteria cri = session.createCriteria(Goods.class);
		Criterion cron = Restrictions.like("name", name,
				MatchMode.ANYWHERE).ignoreCase();
		cri.add(cron);
		Goods goods = (Goods) cri.uniqueResult();
		return (List<Goods>) goods;
	}

	// @Override
	public int save(Goods goods) {
		Session session = getSession();
		session.save(goods);
		return goods.getId();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.founder.dao.Album#updateAlbum(Album Album)
	 */
	// @Override
	public void update(Goods goods) {
		Session session = getSession();
		session.update(goods);
	}

	// @Override
	public int deleteById(int id) {
		Session session = getSession();
		Goods goods = new Goods();
		goods.setId(id);
		session.delete(goods);
		return id;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.founder.dao.AlbumDao#deleteAlbumById(Album acc)
	 */
	// @Override
	public int delete(Goods goods) {
		Session session = getSession();
		session.delete(goods);
		return goods.getId();
	}

	
}
