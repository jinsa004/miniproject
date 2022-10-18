package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.employee.Employee;
import site.metacoding.miniproject.domain.intro.Intro;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.domain.subscribe.Subscribe;
import site.metacoding.miniproject.service.EmployeeService;
import site.metacoding.miniproject.service.IntroService;
import site.metacoding.miniproject.service.ResumeService;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeJoinDto;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeLoginDto;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeUpdateDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class EmployeeController {

    @Autowired
    private final EmployeeService employeeService;
    private final ResumeService resumeService;
    private final IntroService introService;
    private final HttpSession session;

    @PostMapping("/emp/login")
    public @ResponseBody CMRespDto<?> login(@RequestBody EmployeeLoginDto loginDto, HttpServletResponse response) {
        System.out.println("===============");
        System.out.println(loginDto.isRemember());
        System.out.println("===============");

        // if (loginDto.isRemember() == true) {
        // Cookie cookie = new Cookie("employeeUsername",
        // loginDto.getEmployeeUsername());
        // cookie.setMaxAge(60 * 60 * 24);
        // response.addCookie(cookie);

        // } else {
        // Cookie cookie = new Cookie("employeeUsername", null);
        // cookie.setMaxAge(0);
        // response.addCookie(cookie);
        // }

        Employee principal = employeeService.로그인(loginDto);
        if (principal == null) {
            return new CMRespDto<>(-1, "로그인실패", null);
        }
        session.setAttribute("principal", principal);
        return new CMRespDto<>(1, "로그인성공", principal);
    }

    @GetMapping("/emp/matchingNotice")
    public String matchingList() {// 개인회원이 보는 매칭리스트탭(관심분야맞는 공고 목록보기)
        return "employee/matchingNotice";
    }

    @GetMapping("/emp/subscription")
    public String subscriptionList() {// 개인회원이 보는 구독기업공고탭(구독기업 공고 목록보기)
        return "employee/subscription";
    }

    @GetMapping("/emp/companyIntroDetail/{introId}")
    public String introDetail(@PathVariable Integer introId, Model model) {// 개인회원 보는 기업소개 상세보기
        Employee principal = (Employee) session.getAttribute("principal");
        if (principal == null) {
            model.addAttribute("detailDto", introService.기업소개상세보기(introId, 0));
        } else {
            model.addAttribute("detailDto", introService.기업소개상세보기(introId, principal.getEmployeeId()));
        }
        return "employee/coIntroDetail";
    }

    @PostMapping("/emp/companyIntroDetail/{introId}/subscribe")
    public @ResponseBody CMRespDto<?> insertSub(@PathVariable Integer introId) {// 구독하기
        Employee principal = (Employee) session.getAttribute("principal");
        Subscribe subscribe = new Subscribe(principal.getEmployeeId(), introId);
        introService.구독하기(subscribe);
        return new CMRespDto<>(1, "구독성공", subscribe);
    }

    @DeleteMapping("/emp/companyIntroDetail/{introId}/subscribe/{subscribeId}")
    public @ResponseBody CMRespDto<?> deleteSub(@PathVariable Integer introId, @PathVariable Integer subscribeId) {// 구독취소
        introService.구독취소하기(subscribeId);
        return new CMRespDto<>(1, "구독취소성공", null);
    }

    @GetMapping("/emp/companyList")
    public String companylist(Model model) {// 개인회원이 보는 기업소개 목록보기
        List<Intro> introList = introService.기업소개목록보기();
        model.addAttribute("introList", introList);
        return "employee/companyList";
    }

    @GetMapping("/emp/mypageInsertForm/{employeeId}")
    public String mypageResumeInsert(@PathVariable Integer employeeId, Model model) {// 이력서 등록, 수정, 삭제, 대표 이력서 선택
        List<Resume> resumePS = resumeService.내이력서가져오기(employeeId);
        model.addAttribute("resumePS", resumePS);
        session.getAttribute("principal");
        return "employee/mypageInsertForm";
    }

    @GetMapping("/emp/employeeInfo/{employeeId}")
    public String 회원정보수정탈퇴페이지(@PathVariable Integer employeeId, Model model) {// 개인회원 회원가입 정보수정
        Employee employeePS = (Employee) session.getAttribute("principal");
        /* Employee employeePS = employeeService.employeeUpdate(employeeId); */
        model.addAttribute("employee", employeePS);
        return "employee/empInfo";
    }

    @DeleteMapping("/emp/employeeInfo/{employeeId}")
    public @ResponseBody CMRespDto<?> 회원탈퇴(@PathVariable Integer employeeId, HttpServletResponse response) {
        employeeService.employeeDelete(employeeId);
        Cookie cookie = new Cookie("employeeUsername", null);
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        session.invalidate();
        return new CMRespDto<>(1, "회원탈퇴성공", null);
    }

    @PutMapping("/emp/employeeInfo/{employeeId}")
    public @ResponseBody CMRespDto<?> 회원정보수정(@PathVariable Integer employeeId,
            @RequestBody EmployeeUpdateDto employeeUpdateDto) {

        Employee employeePS = employeeService.employeeUpdate(employeeId,
                employeeUpdateDto);
        session.setAttribute("principal", employeePS);

        employeeService.employeeUpdate(employeeId, employeeUpdateDto);
        return new CMRespDto<>(1, "회원수정성공", null);
    }

    @PostMapping("/emp/join")
    public @ResponseBody CMRespDto<?> 회원가입(@RequestBody EmployeeJoinDto employeeJoinDto) {
        employeeService.employeeJoin(employeeJoinDto);
        return new CMRespDto<>(1, "회원가입성공", null);
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/";
    }
}
