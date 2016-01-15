package cn.edu.tju.service.note;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import cn.edu.tju.domain.Note;
import cn.edu.tju.util.Pager;

public interface NoteService {
	
	/**
	 * 分页、多条件查询笔记
	 * @param pageInfo
	 * @param conditions
	 */
	void getNotesByPage(final Pager<Note> pageInfo,Map<String,Object> conditions);
	
	/**
	 * 根据ID获取一份笔记
	 * @param id
	 * @return
	 */
	Note getNote(int id);
	
	/**
	 * 根据科目查询
	 * @param subjects
	 * @return
	 */
	List<Note> getNotesBySubjects(String subjects);
	
	/**
	 * 插入图册实体
	 * @param Album
	 * @return
	 */
	int saveNote(Note Album);
	
	/**
	 * 保存上传来的MultipartFile
	 * @param path
	 * @param id
	 * @param index
	 */
	void saveUploadedMultipartFile(int id, MultipartFile file,int index);
	
	/**
	 * 向ID指定的笔记增加num张图片
	 */
	void updateCurrentPage(int num,int id);
	
	/**
	 * 上传图片，将上传的文件（图片）放入该笔记对应的目录下
	 * @param noteId
	 * @param files
	 */
	void uploadNotePics(int noteId,List<MultipartFile> files);
}
