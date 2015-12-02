package com.ams.app.pagecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value = {"/","api"})
	public String apiPage1() {
		return "api";
	}
	@RequestMapping(value = "/userarticlepage")
	public String apiPage2() {
		return "userarticle";
	}
	@RequestMapping(value = "/adminuser")
	public String apiPage3() {
		return "adminuser";
	}
	@RequestMapping(value = "/loginhelp")
	public String apiLogin() {
		return "loginhelp";
	}
}
