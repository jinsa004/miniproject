package site.metacoding.miniproject.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import site.metacoding.miniproject.handler.CoLoginInterceptor;
import site.metacoding.miniproject.handler.EmpLoginInterceptor;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new EmpLoginInterceptor())
				.addPathPatterns("/es/**");
				
		registry.addInterceptor(new CoLoginInterceptor())
				.addPathPatterns("/cs/**");
	}
}
