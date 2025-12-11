package kr.ac.kopo.potential.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.character.service.CharacterService;
import kr.ac.kopo.character.service.CharacterServiceImpl;
import kr.ac.kopo.character.vo.CharacterVO;
import kr.ac.kopo.framework.Controller;

public class MenuController implements Controller {
	
	CharacterService characterService;

	public MenuController() {
		characterService = new CharacterServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<CharacterVO> list = characterService.selectAllChar();
		request.setAttribute("charList", list);
		return "/potential/menu.jsp";
	}

}
