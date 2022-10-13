package site.metacoding.miniproject.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.service.CompanyService;
import site.metacoding.miniproject.web.dto.request.JoinDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class CompanyController {

    private final CompanyService companyService;
    private final HttpSession session;

    @PostMapping("/co/login")
    public @ResponseBody CMRespDto<?> login(@RequestBody LoginDto loginDto, HttpServletResponse response) {
        System.out.println("===============");
        System.out.println(loginDto.isRemember());
        System.out.println("===============");

        if (loginDto.isRemember() == true) {
            Cookie cookie = new Cookie("companyUsername", loginDto.getCompanyUsername());
            cookie.setMaxAge(60 * 60 * 24);
            response.addCookie(cookie);

        } else {
            Cookie cookie = new Cookie("companyUsername", null);
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }

        Company principal = companyService.로그인(loginDto);
        if (principal == null) {
            return new CMRespDto<>(-1, "로그인실패", null);
        }
        session.setAttribute("principal", principal);
        return new CMRespDto<>(1, "로그인성공", null);
    }
    
    @GetMapping("/co/mainCompany")
    public String companyMain() {// 기업회원이 보는 메인페이지
        return "company/mainCompany";
    }

    @GetMapping("/co/supCompany")
    public String supportList() {// 기업회원이 보는 공고/지원자관리 탭
        return "company/supporter";
    }

    @GetMapping("/co/matchingResume")
    public String companyMatchingList() {// 기업회원이 보는 이력서 매칭리스트
        return "company/matchingResume";
    }

    @GetMapping("/co/companyInfo")
    public String 기업정보() {// 기업회원 회원가입 정보 수정할 때 쓰는 거 company 테이블
        return "company/companyInfo";
    }

    @GetMapping("/co/companyIntroDetail")
    public String 기업소개입력() {// 기업소개 상세보기 intro 테이블
        return "company/coIntroDetail";
    }

    @GetMapping("/co/companyIntroUpdate")
    public String 마이페이지() {// 기업소개 상세보기 수정하기 intro 테이블
        return "company/coIntroUpdate";
    }

    @PostMapping("/co/Join")
    public @ResponseBody CMRespDto<?> companyJoin(@RequestBody JoinDto joinDto) {
        companyService.회원가입(joinDto);
        return new CMRespDto<>(1, "회원가입성공", null);
    }

}
