package kr.ac.kopo.framework;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	
	private HandlerMapping mapping;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		mapping = new HandlerMapping();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String context = request.getContextPath();
		String uri = request.getRequestURI();
		uri = uri.substring(context.length());
		System.out.println("요청 uri : " + uri);
		try {
			Controller control = mapping.getController(uri);
			if(control != null) {
				String callPage = control.handleRequest(request, response);
				
				if(callPage != null) {
					if(callPage.startsWith("redirect:")){
						callPage = callPage.substring("redirect:".length());
						response.sendRedirect(request.getContextPath() + callPage);
					}else {
						RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
						dispatcher.forward(request, response);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
