package cn.edu.tju.service.note.imp;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.tju.dao.note.NoteDao;
import cn.edu.tju.domain.Note;
import cn.edu.tju.service.config.SystemConfigService;
import cn.edu.tju.service.note.NoteService;
import cn.edu.tju.util.FileUtil;
import cn.edu.tju.util.Logger;
import cn.edu.tju.util.Pager;


@Service
public class NoteServiceImp implements NoteService {
	
	private static Logger logger = Logger.getLogger(NoteServiceImp.class);
	@Autowired private NoteDao noteDao;
	@Autowired private SystemConfigService sysCfgSrv;
	
	
	public void getNotesByPage(final Pager<Note> pageInfo,Map<String,Object> conditions){
		noteDao.getByPage(pageInfo, conditions);
	}
	
	public Note getNote(int id){
		return noteDao.getById(id);
	}
	
	public List<Note> getNotesBySubjects(String subjects) {
		List<Note> album = noteDao.getBySubjects(subjects);
		return album;
	}

	
	public int saveNote(Note Album) {
		int id=noteDao.save(Album);
		return id;
	}

	public void saveUploadedMultipartFile(int id, MultipartFile file,int index) {
		logger.debug("进入存文件service方法");
		FileUtil util = new FileUtil();
		String stoRoot = sysCfgSrv.getFileStorageRoot();
		//创建文件夹
		if(!stoRoot.endsWith("\\")){
			stoRoot += File.separator;
		}
		String storeFolderPath = stoRoot+"noteFile"+File.separator+id+File.separator;
		util.createFolder(storeFolderPath);//此方法中，文件夹如果已经存在，则忽略
		//获取上传来的文件的文件名
		String oriName = file.getOriginalFilename();
		//取文件名的扩展名
		String extName = oriName.substring(oriName.lastIndexOf("."));
		//将上传来的文件重命名，用"页码.扩展名"的形式存储，以便标记文件的页码
		String storeName = index+extName;
		logger.debug("存储名："+storeName);
		try {
			//以流的写进去
			util.createFileByInStream(storeFolderPath, storeName, file.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void updateCurrentPage(int num,int id) {
		noteDao.updateCurrentPage(num,id);
	}

	public void uploadNotePics(int noteId,List<MultipartFile> files) {
		//获取本笔记已有的图片数量；
		Integer index = this.getNote(noteId).getCurrPage();
		//如果数据库中此字段为null，将其初始化为0
		if(index==null){
			index = 0;
		}
		for(MultipartFile file:files){
			index++;//index用于为上传来的文件编号作为页码
			this.saveUploadedMultipartFile(noteId, file,index);
			logger.debug(file.getOriginalFilename()+"上传完毕");
		}
		//更新本笔记已经上传的图片数量
		this.updateCurrentPage(files.size(),noteId);
	}
	

}
