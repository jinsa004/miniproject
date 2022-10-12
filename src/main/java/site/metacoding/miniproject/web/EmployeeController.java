package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.employee.Employee;

import site.metacoding.miniproject.domain.intro.Intro;
import site.metacoding.miniproject.service.EmployeeService;
import site.metacoding.miniproject.service.IntroService;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class EmployeeController {

    @Autowired
    private final EmployeeService employeeService;
    private final IntroService introService;
    private final HttpSession session;

    @PostMapping("/emp/login")
    public @ResponseBody CMRespDto<?> login(@RequestBody LoginDto loginDto, HttpServletResponse response) {
        System.out.println("===============");
        System.out.println(loginDto.isRemember());
        System.out.println("===============");

        if (loginDto.isRemember() == true) {
            Cookie cookie = new Cookie("employeeUsername", loginDto.getEmployeeUsername());
            cookie.setMaxAge(60 * 60 * 24);
            response.addCookie(cookie);

        } else {
            Cookie cookie = new Cookie("employeeUsername", null);
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }

        Employee principal = employeeService.로그인(loginDto);
        if (principal == null) {
            return new CMRespDto<>(-1, "로그인실패", null);
        }
        session.setAttribute("principal", principal);
        return new CMRespDto<>(1, "로그인성공", null);
    }

    // @GetMapping("/")
    // public String main() {// 개인회원이 보는 메인페이지
    // return "employee/main";
    // }
    // NoticeController의 전체직군보기 페이지가 메인이라
    // 일단 주석처리함. EmployeeController에 Notice 메서드를 넣을지 NoticeController에 넣을지 정해야 함.
    // 일단은 EmployeeController에 불러온 Service가 많아서 NoticeController에 넣어놨음.

    @GetMapping("/emp/matchingNotice")
    public String matchingList() {// 개인회원이 보는 매칭리스트탭(관심분야맞는 공고 목록보기)
        return "employee/matchingNotice";
    }

    @GetMapping("/emp/subscription")
    public String subscriptionList() {// 개인회원이 보는 구독기업공고탭(구독기업 공고 목록보기)
        return "employee/subscription";
    }

    @GetMapping("/emp/companyIntroDetail/{introId}")
    public String introDetail(@PathVariable Integer introId, Model model) {
        model.addAttribute("intro", introService.기업소개상세보기(introId));
        return "employee/coIntroDetail";
    }

    @GetMapping("/emp/companyList")
    public String companylist(Model model) {
        List<Intro> introList = introService.기업소개목록보기();
        model.addAttribute("introList", introList);

        return "employee/companyList";
    }

    @GetMapping("/emp/mypageInsertForm")
    public String mypageResumeInsert() {// 이력서 등록, 수정, 삭제, 대표 이력서 선택
        session.getAttribute("principal");
        return "employee/mypageInsertForm";
    }

    @GetMapping("/emp/employeeInfo")
    public String 회원정보() {// 개인회원 회원가입 정보 수정/탈퇴 페이지
        return "employee/empInfo";
    }

    @PostMapping("/emp/join")
    public @ResponseBody CMRespDto<?> 회원가입(@RequestBody Employee employee) {
        employeeService.employeeJoin(employee);
        return new CMRespDto<>(1, "회원가입성공", null);
    }

    @GetMapping("/emp/join")
    public String mainJoin() {
        return "employee/header";
    }
}
