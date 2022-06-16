package kr.ac.kopo.strike.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Member;


public class FranchiseeInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		Franchisee franchisee = (Franchisee) session.getAttribute("franchisee");
		
		if(franchisee == null) {
			response.sendRedirect(request.getContextPath()+"/franchiseeLogin/login");
			return false;
		}		
		return true;
	}

}
