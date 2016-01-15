package cn.edu.tju.dao.schoolCollegeMajor.Imp;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.edu.tju.dao.schoolCollegeMajor.SchoolCollegeMajorDao;
import cn.edu.tju.domain.SchoolCollegeMajor;

@Repository
public class SchoolCollegeMajorDaoImp implements SchoolCollegeMajorDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public SchoolCollegeMajor getById(int id) {
		Session session = getSession();
		SchoolCollegeMajor scm = 
			(SchoolCollegeMajor) session.get(SchoolCollegeMajor.class, id);
		return scm;
	}

	public List<SchoolCollegeMajor> getByLevel(int level) {
		Session session = getSession();
		Criteria cri = session.createCriteria(SchoolCollegeMajor.class);
		cri.add(Restrictions.eq("level", level));
		return cri.list();
	}
	
	public List<SchoolCollegeMajor> getByParent(int parentId) {
		Session session = getSession();
		Criteria cri = session.createCriteria(SchoolCollegeMajor.class);
		cri.add(Restrictions.eq("parentId", parentId));
		return cri.list();
	}


	public SchoolCollegeMajor getByNameAndPid(String name, int parentId) {
		Session session = getSession();
		Criteria cri = session.createCriteria(SchoolCollegeMajor.class);
		cri.add(Restrictions.like("name", name,MatchMode.EXACT));
		cri.add(Restrictions.eq("parentId", parentId));
		return (SchoolCollegeMajor) cri.uniqueResult();
	}

	public int save(SchoolCollegeMajor scm) {
		Session session = getSession();
		session.save(scm);
		return scm.getId();
	}

	public void update(SchoolCollegeMajor scm) {
		Session session = getSession();
		session.update(scm);
	}

	public void delete(int id) {
		Session session = getSession();
		Query q = session.createQuery("delete from SchoolCollegeMajor where id = ?");
		q.setInteger(0, id);
		q.executeUpdate();
	}

	public void delete(String name, int parentId) {
		Session session = getSession();
		Query q = session.createQuery(
				"delete from SchoolCollegeMajor where name like ? and parentId = ?");
		q.setString(0, name);
		q.setInteger(1, parentId);
		q.executeUpdate();
	}

}
