package kr.ac.kopo.build.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildListController implements Controller {
	
	private BuildService buildService;

	public BuildListController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String param = request.getParameter("page");
		int page;
		List<BuildVO> list;
		if(param == null) {
			page = 1;
		}else {
			page = Integer.parseInt(param);
		}
		list = buildService.selectAllBuild(page);
		int startPage = (int) ((page - 1)/10) * 10 + 1;
		int endPage = (int) ((page - 1)/10 + 1) * 10;
		int lastPage = (int) buildService.countBuild() / 10 + 1;
		if(lastPage < endPage) {
			endPage = lastPage;
		}
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("lastPage", lastPage);
		return "/build/list.jsp";
	}
	
}
