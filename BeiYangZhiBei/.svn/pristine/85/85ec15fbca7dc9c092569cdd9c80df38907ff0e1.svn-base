package cn.edu.tju.web.DTO.converter;

import cn.edu.tju.domain.Note;
import cn.edu.tju.web.DTO.NoteDTO;

public class NoteConverter {

	/**
	 * 将Note的domain实体转换为DTO实体
	 * @param note
	 * @return
	 */
	public static NoteDTO domainToDTO(Note note){
		NoteDTO dto = new NoteDTO();
		dto.setId(note.getId());
		dto.setName(note.getName());
		dto.setCreateUserName(note.getCreateUser());
		dto.setSubjects(note.getSubjects());
		dto.setTags(note.getTags());
		dto.setCurrPage(note.getCurrPage());
		return dto;
	}
	
	
}
