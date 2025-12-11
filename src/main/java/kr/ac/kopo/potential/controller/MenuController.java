package kr.ac.kopo.potential.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.potential.service.PotentialService;
import kr.ac.kopo.potential.service.PotentialServiceImpl;

public class MenuController implements Controller {
	
	PotentialService potentialService;

	public MenuController() {
		potentialService = new PotentialServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return "/potential/menu.jsp";
	}

}
