package cn.edu.tju.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Table(name="notes")
@Entity
public class Note {
	private int id;
	private String name;
	private String storePath;
	private String createUser;
	private String subjects;
	private String tags;
	private Integer currPage;//当前上传图片的数量
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="storePath")
	public String getStorePath() {
		return storePath;
	}
	public void setStorePath(String storePath) {
		this.storePath = storePath;
	}
	//映射，表里的createUserId就是这里的createUser，一一对应
	@Column(name="createUserId")
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	@Column(name="subjects")
	public String getSubjects() {
		return subjects;
	}
	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}
	@Column(name="tags")
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	
	@Column(name="curr_page")
	public Integer getCurrPage() {
		return currPage;
	}
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", name=" + name + ", storePath=" + storePath
				+ ", createUser=" + createUser + ", subjects=" + subjects
				+ ", tags=" + tags + "]";
	}

	

}
