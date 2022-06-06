package kr.ac.kopo.strike.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.strike.model.Member;


public class UserInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		Member member = (Member) session.getAttribute("member");
		
		if(member == null) {
			response.sendRedirect(request.getContextPath()+"/login/login");
			return false;
		}		
		return true;
	}

}
