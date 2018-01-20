package com.hieo.kms.mapper;

import java.util.List;

import com.hieo.kms.model.Department;

public interface DepartmentMapper {
	long selectPrimaryKey();
	
	Department selectByPrimaryKey(long deptId);
	
	List<Department> selectAllDepartments();
	
	List<Department> selectDepartmentsByState(int deptState);
	
	int selectCountOfSameName(Department record);
	
	int updateByPrimaryKeySelective(Department record);
	
    int insert(Department record);

    int insertSelective(Department record);
    
    int deleteByPrimaryKey(int deptId);
}