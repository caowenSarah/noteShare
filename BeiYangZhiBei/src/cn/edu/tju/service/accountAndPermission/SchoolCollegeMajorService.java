package cn.edu.tju.service.accountAndPermission;

import java.util.List;

import cn.edu.tju.domain.SchoolCollegeMajor;

public interface SchoolCollegeMajorService {

	/**
	 * 根据层级ID来获取不同层级的是实体列表
	 * @param level
	 * @return
	 */
	List<SchoolCollegeMajor> getSchoolCollegeMajorByLevel(int level);
	
	List<SchoolCollegeMajor> getAllSchools();
	
	/**
	 * 获取某一个ID下的所有子，但不包含孙
	 * @param name
	 * @param parentId
	 * @return
	 */
	List<SchoolCollegeMajor> getByParent(int parentId);
	
	int saveSchoolCollegeMajor(SchoolCollegeMajor scm);
	
	void updateSchoolCollegeMajor(SchoolCollegeMajor scm);
	
	void deleteSchoolCollegeMajor(int id);
}
