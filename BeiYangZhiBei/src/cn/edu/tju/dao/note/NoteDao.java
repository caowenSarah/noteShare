package cn.edu.tju.dao.note;
import java.util.List;
import java.util.Map;
import cn.edu.tju.domain.Note;
import cn.edu.tju.util.Pager;


/**
 * 笔记图册访问接口
 * @author Administrator
 *
 */

public interface NoteDao {
	/**
	 * 按照给定的查询条件和分页条件查询所有的note
	 * @param pageInfo:带分页的查询结果集，查询结果集在pageInfo的results属性里
	 * @param conditions:Map型查询条件集
	 */

	void getByPage(final Pager<Note> pageInfo,Map<String,Object> conditions);
	
	/**
	 * 查找全部笔记
	 * @return 笔记集合
	 */
	List<Note> getNotes();
	
	/**
	 * 按照id查询
	 * @param id
	 * @return
	 */
	Note getById(int id);
	/**
	 * 按照笔记的名字查找note
	 * @param userName
	 * @return
	 */
	List<Note> getByname(String name);
	
	/**
	 * 按照创建者查找note
	 * @param userName
	 * @return
	 */
	Note getByCreateUser(String createUser);
	/**
	 * 按照笔记所属科目查找note
	 * @param userName
	 * @return
	 */
	List<Note> getBySubjects(String subjects);
	
	/**
	 * 插入新的note
	 * @param note
	 * @return
	 */
	int save(Note note);
	
	/**
	 * 更新note
	 * @param note
	 */
	void update(Note note);
	
	/**
	 * 更新笔记图片页数
	 */
	void updateCurrentPage(int num,int id);
	
	/**
	 * 按照指定id删除note
	 * @param id:noteId
	 * @return:如果成功，则返回被删除的用户ID
	 */
	int deleteById(int id);
	/**
	 * 按照指定对象删除note
	 * @param acc
	 * @return：如果成功，则返回被删除的用户ID
	 */
	int delete(Note acc);

}
