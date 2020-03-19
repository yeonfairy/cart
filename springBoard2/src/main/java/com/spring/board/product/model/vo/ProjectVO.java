package com.spring.board.product.model.vo;

public class ProjectVO {
	private int projectId; // 상품번호
	private String projectName; // 상품이름
	private String projectDesc; // 상품 상세정보
	private String createDate;
	
	@Override
	public String toString() {
		return "ProjectVO [projectId=" + projectId + ", projectName=" + projectName + ", projectDesc=" + projectDesc
				+ ", createDate=" + createDate + "]";
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectDesc() {
		return projectDesc;
	}
	public void setProjectDesc(String projectDesc) {
		this.projectDesc = projectDesc;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
}
