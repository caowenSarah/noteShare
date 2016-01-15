package cn.edu.tju.web.controller.note;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import cn.edu.tju.domain.Note;
import cn.edu.tju.service.note.NoteService;
import cn.edu.tju.service.note.imp.NoteServiceImp;
import cn.edu.tju.util.FileUtil;
import cn.edu.tju.util.Logger;
import cn.edu.tju.util.Pager;
import cn.edu.tju.web.DTO.NoteDTO;
import cn.edu.tju.web.DTO.converter.NoteConverter;


@Controller
public class NoteController {
	
	private static Logger logger = Logger.getLogger(NoteController.class);
	@Autowired
	NoteService noteSrv;
	
	/**
	 * 进入笔记详情页面
	 * @return
	 */
	@RequestMapping(value="/noteDetail",method=RequestMethod.GET)
	public String noteDetail(
			@RequestParam("id") int noteId,
			HttpServletRequest request,
			HttpServletResponse response,Model model){
		System.out.println("进入笔记详情页面");
		Note note = noteSrv.getNote(noteId);
		NoteDTO dto = NoteConverter.domainToDTO(note);
		model.addAttribute("note", dto);
		return "note/noteDetail";
	}
	
	//noteDetail.action?id=${note.id
	@RequestMapping(value="/noteList",method=RequestMethod.GET)
	public String noteList(HttpServletRequest request,
			HttpServletResponse response,Model model){
		System.out.println("进入笔记列表页面");
		
		//接收前台的参数“科目”，若前台未传此参数，则给此处的subjects变量赋值为空字符串
		String subjects = ServletRequestUtils.getStringParameter(request,"subjects","");
		String pageSize = ServletRequestUtils.getStringParameter(request,"pageSize","");
		String pageIndex = ServletRequestUtils.getStringParameter(request,"pageIndex","");

		Pager<Note> pageInfo = new Pager<Note>();
		if(pageSize.equals("") || pageIndex.equals("")){
		}else{
			pageInfo.setPageIndex(Integer.parseInt(pageIndex));
			pageInfo.setPageSize(Integer.parseInt(pageSize));
		}
		Map<String,Object> conditions = new HashMap<String,Object>();
		if(!subjects.equals("")){
			conditions.put("subjects", subjects);
		}
		noteSrv.getNotesByPage(pageInfo, conditions);
		List<Note> notes = pageInfo.getResults();
		List<NoteDTO> noteDTOList = new ArrayList<NoteDTO>();
		//把notelist转换成DTOlist，javabean的转换
		for(Note note : notes){
			NoteDTO dto = NoteConverter.domainToDTO(note);
			noteDTOList.add(dto);
		}
		//将noteList作为一个属性，绑到model，传到前台
		model.addAttribute("noteList", noteDTOList);
		return "note/noteList";
	}
	
	/**
	 * 跳转至搜索页面
	 * @return
	 */
/*	@RequestMapping(value="/note_show",method=RequestMethod.GET)
	public String toSearch(){
		System.out.println("进入搜索页面");
		return "note_show";
	}
*/
	
	
	@RequestMapping(value="/note_show",method=RequestMethod.GET)
	public String note_show(HttpServletRequest request,
			HttpServletResponse response,Model model){
		System.out.println("进入搜索页面");
		
		//接收前台的参数“科目”，若前台未传此参数，则给此处的subjects变量赋值为空字符串
		String subjects = ServletRequestUtils.getStringParameter(request,"subjects","");
		

		/*Map<String,Object> conditions = new HashMap<String,Object>();
		if(!subjects.equals("")){
			conditions.put("subjects", subjects);
		}*/
		List<Note> album=noteSrv.getNotesBySubjects(subjects);
		/*List<NoteDTO> noteDTOList = new ArrayList<NoteDTO>();
		//把notelist转换成DTOlist，javabean的转换
		for(Note note : album){
			NoteDTO dto = NoteConverter.domainToDTO(note);
			noteDTOList.add(dto);
		}
		//将noteList作为一个属性，绑到model，传到前台
		model.addAttribute("noteList", noteDTOList);*/
		model.addAttribute(album);
		return "note/note_show";
	}
	
	
	/**
	 * 进入新建笔记页面（get）
	 * @return
	 */
	@RequestMapping(value="/createNote",method=RequestMethod.GET)
	public String toCreateNote(){
		System.out.println("进入新建笔记页面");
		return "note/createNote";
	}
	/**
	 * 提交新建笔记（post）
	 * @return
	 */
	@RequestMapping(value="/createNote",method=RequestMethod.POST)
	public String createNote(
			@RequestParam("notename") String notename,
			@RequestParam("subjects") String subjects,
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		System.out.println("新建笔记页面");
		Note note = new Note();
		note.setName(notename);
		note.setSubjects(subjects);
		note.setCurrPage(0);
		int id=noteSrv.saveNote(note);
		logger.debug(note.toString());
		model.addAttribute("note", note);
		return "note/uploadNotePic";
	}

	@RequestMapping(value="/uploadNotePic",method=RequestMethod.POST)
	@ResponseBody
	public void uploadNotePic(
			HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam(value="file", required=false)  List<MultipartFile> files){
		logger.debug("上传文件了");
		int noteId = ServletRequestUtils.getIntParameter(request, "noteId", -1);
		noteSrv.uploadNotePics(noteId, files);
	}
}

