package nd.career.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import nd.career.com.service.MasterService;

@Controller
@RequestMapping(value="master")
public class MasterController {

	
	@Autowired
	MasterService service;
	
	
	// 가입승인 페이지
	@RequestMapping(value="confirmPage")
	public String confirmPage() {
		
		return "master/confirm";
	}
	
	// 경력관리 페이지
	@RequestMapping(value="careerManage")
	public String careerManagePage() {
		
		return "master/careerManage";
	}
}
