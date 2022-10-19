package site.metacoding.miniproject.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.fasterxml.jackson.databind.ObjectMapper;

import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

public class CoLoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		System.out.println("================");
		System.out.println(request.getRequestURI());
		System.out.println("================");

		String uri = request.getRequestURI();

		HttpSession session = request.getSession();
		Company principal = (Company) session.getAttribute("coprincipal");
		if (principal == null) {
			if (uri.contains("coapi")) {
				System.out.println("===========");
				System.out.println("API 가 주소에 있음");
				// response.setHeader("Content-Type", "application/json; charset=utf-8");

				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				CMRespDto<?> cmRespDto = new CMRespDto<>(-1, "인증이 필요합니다", null);
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(cmRespDto);
				out.println(json);
			} else {
				response.setContentType("text/html; charset=utf-8");
				System.out.println("===========");
				System.out.println("API 가 주소에 없음");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('로그인 해주세요.'); location.href='/co'; </script>");
			}
			return false;
		}
		return true;
	}
}
