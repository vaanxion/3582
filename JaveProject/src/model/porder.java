package model;

import java.util.Date;

public class porder {
	String id, enName, chName, type, unit, place, grape, feature, status, imgPath, createUser, updateUser;
	int ml, price;
	double percent;
	Date createTime = new Date();
	Date updateTime = new Date();

	public porder() {
	}

	public porder(String id, String enName, String chName, String type, String unit, String place, String grape,
			String feature, String status, String imgPath, String createUser, String updateUser, int ml, int price,
			double percent, Date createTime, Date updateTime) {
		super();
		this.id = id;
		this.enName = enName;
		this.chName = chName;
		this.type = type;
		this.unit = unit;
		this.place = place;
		this.grape = grape;
		this.feature = feature;
		this.status = status;
		this.imgPath = imgPath;
		this.createUser = createUser;
		this.updateUser = updateUser;
		this.ml = ml;
		this.price = price;
		this.percent = percent;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	public String getId() {
		return id;
	}

	public String getEnName() {
		return enName;
	}

	public String getChName() {
		return chName;
	}

	public String getType() {
		return type;
	}

	public String getUnit() {
		return unit;
	}

	public String getPlace() {
		return place;
	}

	public String getGrape() {
		return grape;
	}

	public String getFeature() {
		return feature;
	}

	public String getStatus() {
		return status;
	}

	public String getImgPath() {
		return imgPath;
	}

	public String getCreateUser() {
		return createUser;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public int getMl() {
		return ml;
	}

	public int getPrice() {
		return price;
	}

	public double getPercent() {
		return percent;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public void setChName(String chName) {
		this.chName = chName;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public void setGrape(String grape) {
		this.grape = grape;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public void setMl(int ml) {
		this.ml = ml;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setPercent(double percent) {
		this.percent = percent;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

}// porder
