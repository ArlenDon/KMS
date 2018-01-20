package com.hieo.kms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hieo.kms.mapper.DepartmentMapper;
import com.hieo.kms.model.Department;

@Service
public class UserService {
	@Autowired
	private DepartmentMapper departmentMapper;
	
	/**
	 * @return the primary key of the table department
	 */
	public long selectDeptPrimaryKey() {
		return departmentMapper.selectPrimaryKey();
	}
	
	/**
	 * @param deptState:1-search all normal departments;2-search all departments with normal and abnormal state
	 * @return
	 */
	public List<Department> selectDepartment(int deptState) {
		if (deptState == 2) {
			return departmentMapper.selectAllDepartments();
		}
		return departmentMapper.selectDepartmentsByState(deptState);
	}
	
	/**
	 * @param dept
	 * @return:1-the parent department is missing;2-department name is not unique;
	 *         3-insert operation is successful;4-insert operation is failed
	 */
	public String addDepartment(Department dept) {
		long parentId = dept.getParentId();
		int deptLevel = 1;
		String parentDeptPath = "";
		if (parentId != 0) {
			Department parentDept = departmentMapper.selectByPrimaryKey(parentId);
			if (parentDept == null) {
				return "1";
			}
			parentDeptPath = parentDept.getDeptPath();
			deptLevel += parentDept.getDeptLevel();
		}
		dept.setDeptLevel(deptLevel);
		int count = departmentMapper.selectCountOfSameName(dept);
		if (count != 0) {
			return "2";
		}
		long deptId = selectDeptPrimaryKey();
		dept.setDeptId(deptId);
		dept.setSeqNum(deptId);
		dept.setDeptState(1);
		dept.setDeptPath(parentDeptPath + String.valueOf(deptId) + "/");
		int res = departmentMapper.insert(dept);
		if (res == 1) {
			return "3";
		}
		return "4";
	}
	
	/**
	 * @param dept
	 * @return:1-the parent department is missing;2-department name is not unique;
	 *         3-update operation is successful;4-update operation is failed
	 */
	public String editDepartment(Department dept) {
		long parentId = dept.getParentId();
		
		if (parentId != 0) {
			Department parentDept = departmentMapper.selectByPrimaryKey(parentId);
			if (parentDept == null) {
				return "1";
			}
			
		}
		
		int count = departmentMapper.selectCountOfSameName(dept);
		if (count != 0) {
			return "2";
		}
		
		int res = departmentMapper.updateByPrimaryKeySelective(dept);
		if (res == 1) {
			return "3";
		}
		return "4";
	}
}
