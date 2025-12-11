package kr.ac.kopo.potential.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.character.service.CharacterService;
import kr.ac.kopo.character.service.CharacterServiceImpl;
import kr.ac.kopo.character.vo.CharacterVO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.potential.service.PotentialService;
import kr.ac.kopo.potential.service.PotentialServiceImpl;
import kr.ac.kopo.potential.vo.PotentialVO;

public class DetailController implements Controller {
	
	PotentialService potentialService;
	CharacterService characterService;

	public DetailController() {
		potentialService = new PotentialServiceImpl();
		characterService = new CharacterServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Integer charNo = Integer.parseInt(request.getParameter("no"));
		List<PotentialVO> list = potentialService.selectPotential(charNo);
		CharacterVO character = characterService.selectChar(charNo);
		request.setAttribute("potentialList", list);
		request.setAttribute("character", character);
		return "/potential/detail.jsp";
	}

}
