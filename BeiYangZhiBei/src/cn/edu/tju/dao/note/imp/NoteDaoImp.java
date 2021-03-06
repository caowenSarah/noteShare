package cn.edu.tju.dao.note.imp;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.tju.dao.note.NoteDao;
import cn.edu.tju.domain.Note;
import cn.edu.tju.util.Pager;

@Repository
public class NoteDaoImp implements NoteDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {

		return sessionFactory.getCurrentSession();
	}

	// @Override
	public void getByPage(Pager<Note> pageInfo,
			Map<String, Object> conditions) {

		Session session = getSession();
		Criteria cri = session.createCriteria(Note.class);
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

		List<Note> retList = cri.list();

		pageInfo.setTotalRecord(rowCount);
		pageInfo.setResults(retList);
	}

	// @Override
	public List<Note> getNotes() {

		Session session = getSession();
		Criteria cri = session.createCriteria(Note.class);
		List<Note> list = cri.list();
		return list;
	}

	// @Override
	public Note getById(int id) {
		Session session = getSession();
		Note Album = (Note) session.get(Note.class, id);
		return Album;

	}

	// @Override
	@SuppressWarnings("unchecked")
	public Note getByUserName(String username) {
		Session session = getSession();
		Criteria cri = session.createCriteria(Note.class);
		Criterion cron = Restrictions.like("username", username,
				MatchMode.ANYWHERE).ignoreCase();
		cri.add(cron);
		Note acc = (Note) cri.uniqueResult();
		return acc;
	}

	public Note getByCreateUser(String createUser) {
		Session session = getSession();
		Note Album = (Note) session.get(Note.class, createUser);
		return Album;

	}

	public List<Note> getBySubjects(String subjects) {
		Session session = getSession();
		Criteria cri = session.createCriteria(Note.class);
		Criterion cron = Restrictions.like("subjects", subjects,
				MatchMode.ANYWHERE).ignoreCase();
		cri.add(cron);
		List<Note> alb = cri.list();
		return alb;

	}

	// @Override
	public int save(Note Album) {
		Session session = getSession();
		session.save(Album);
		return Album.getId();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.founder.dao.Album#updateAlbum(Album Album)
	 */
	// @Override
	public void update(Note Album) {
		Session session = getSession();
		session.update(Album);
	}
	
	public void updateCurrentPage(int num,int id){
		Session session = getSession();
		Query q = session.createQuery("update Note as n set n.currPage = n.currPage + ? where id = ?");
		q.setInteger(0, num);
		q.setInteger(1, id);
		q.executeUpdate();
	}

	// @Override
	public int deleteById(int id) {
		Session session = getSession();
		Note acc = new Note();
		acc.setId(id);
		session.delete(acc);
		return id;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.founder.dao.AlbumDao#deleteAlbumById(Album acc)
	 */
	// @Override
	public int delete(Note acc) {
		Session session = getSession();
		session.delete(acc);
		return acc.getId();
	}

	public List<Note> getByname(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
