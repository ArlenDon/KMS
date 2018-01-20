package com.hieo.kms.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hieo.kms.model.Department;
import com.hieo.kms.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/searchDepartment", method=RequestMethod.POST)
	@ResponseBody
	public String searchDepartment(short deptState) {
		List<Department> depts = userService.selectDepartment(deptState);
		return JSON.toJSONString(depts);
	}
	
	@RequestMapping(value="/addDepartment", method=RequestMethod.POST)
	@ResponseBody
	public String addDepartment(Department dept) {
		return userService.addDepartment(dept);
	}
	
	@RequestMapping(value="/editDepartment", method=RequestMethod.POST)
	@ResponseBody
	public String editDepartment(Department dept) {
		return userService.editDepartment(dept);
	}
}
