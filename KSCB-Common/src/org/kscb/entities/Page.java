package org.kscb.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PageManagerTBL")
public class Page implements Serializable{
	
	private static final long serialVersionUID = -2274429519726490825L;
	
	public static final String NO_PAGE_AVAILABLE = "NOPAGEAVAILABLE";
	public static final String HOME_PAGE_INSTANCE_NAME = "DEFAULT";
	public static final String HOME_PAGE_NAME = "Home Page";

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", unique=true, nullable=false)
	private String id;
	
	@Column(name="instanceName")
	private String instanceName;
	
	@Column(name="pageName")
	private String pageName;
	
	@Column(name="hid")
	private String hid;
	
	@Column(name="mid")
	private String mid;
	
	@Column(name="cid")
	private String cid;
	
	@Column(name="lid")
	private String lid;
	
	@Column(name="fid")
	private String fid;
	
	@Column(name="pid")
	private String pid;
	
	@Column(name="isSecured")
	private String isSecured;
	
	@Column(name="isAttached")
	private String isAttached;
	
	@Column(name="titleText")
	private String titleText;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public String getHid() {
		return hid;
	}

	public void setHid(String hid) {
		this.hid = hid;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getLid() {
		return lid;
	}

	public void setLid(String lid) {
		this.lid = lid;
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}
	
	public String getInstanceName() {
		return instanceName;
	}

	public void setInstanceName(String instanceName) {
		this.instanceName = instanceName;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getIsSecured() {
		return isSecured;
	}

	public void setIsSecured(String isSecured) {
		this.isSecured = isSecured;
	}
	
	public String getIsAttached() {
		return isSecured;
	}

	public void setIsAttached(String isSecured) {
		this.isSecured = isSecured;
	}

	public String getTitleText() {
		return titleText;
	}

	public void setTitleText(String titleText) {
		this.titleText = titleText;
	}
	
	
}
