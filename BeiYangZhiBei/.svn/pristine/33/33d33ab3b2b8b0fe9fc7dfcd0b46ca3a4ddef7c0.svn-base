package cn.edu.tju.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="goods")
@Entity
public class Goods {
	
	private int id;
	private String name;
	private int account_id;
	private String type;
	private String image_store_path;
	private String description;
	private String exchange_goods;
	private String price;
	
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
	@Column(name="account_id")
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	
	@Column(name="type")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name="image_store_path")
	public String getImage_store_path() {
		return image_store_path;
	}
	public void setImage_store_path(String image_store_path) {
		this.image_store_path = image_store_path;
	}
	
	@Column(name="description")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Column(name="exchange_goods")
	public String getExchange_goods() {
		return exchange_goods;
	}
	public void setExchange_goods(String exchange_goods) {
		this.exchange_goods = exchange_goods;
	}
	
	@Column(name="price")
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", account_id="
				+ account_id + ", type=" + type + ", image_store_path="
				+ image_store_path + ", description=" + description
				+ ", exchange_goods=" + exchange_goods + ", price=" + price
				+ "]";
	}

	
}
