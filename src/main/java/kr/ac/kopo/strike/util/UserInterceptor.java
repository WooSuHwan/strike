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
		
		Member member = (Member) session.getAttribute("user");
		
		//로그인 했으면 트루
		//멤버가 아니면 로그인 페이지로
		if(member != null) {
			return true;
		}
		
		response.sendRedirect("/login");
		return false;
	}

}
