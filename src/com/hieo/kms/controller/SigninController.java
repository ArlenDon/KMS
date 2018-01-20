package com.hieo.kms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/signin")
public class SigninController {
	@RequestMapping(value="/validateUser", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String validateUser(String username, String password) {
		return username + password + "测试";
	}
}
