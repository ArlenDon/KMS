package com.hieo.kms.model;

public class Department implements IFayTreeNode {
    private long deptId;

    private String deptName;

    private long parentId;

    private String deptPath;

    private int deptLevel;

    private long seqNum;

    private int deptState;

    public long getDeptId() {
        return deptId;
    }

    public void setDeptId(long deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    public long getParentId() {
        return parentId;
    }

    public void setParentId(long parentId) {
        this.parentId = parentId;
    }

    public String getDeptPath() {
        return deptPath;
    }

    public void setDeptPath(String deptPath) {
        this.deptPath = deptPath == null ? null : deptPath.trim();
    }

    public int getDeptLevel() {
        return deptLevel;
    }

    public void setDeptLevel(int deptLevel) {
        this.deptLevel = deptLevel;
    }

    public long getSeqNum() {
        return seqNum;
    }

    public void setSeqNum(long seqNum) {
        this.seqNum = seqNum;
    }

    public int getDeptState() {
        return deptState;
    }

    public void setDeptState(int deptState) {
        this.deptState = deptState;
    }

	@Override
	public long getNodeId() {
		return deptId;
	}

	@Override
	public long getNodeParentId() {
		return parentId;
	}

	@Override
	public String getText() {
		return deptName;
	}
}