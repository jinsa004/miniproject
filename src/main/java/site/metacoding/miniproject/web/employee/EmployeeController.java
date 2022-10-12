package site.metacoding.miniproject.web.employee;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.employee.Employee;
import site.metacoding.miniproject.service.employee.EmployeeService;
import site.metacoding.miniproject.web.dto.employee.EmployeeUpdateDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class EmployeeController {

    private final EmployeeService employeeService;
    private final HttpSession session;

    @GetMapping({ "/", "/emp/main" })
    public String main() {// 개인회원이 보는 메인페이지
        return "employee/main";
    }

    @GetMapping("/emp/matchingNotice")
    public String matchingList() {// 개인회원이 보는 매칭리스트탭(관심분야맞는 공고 목록보기)
        return "employee/matchingNotice";
    }

    @GetMapping("/emp/subscription")
    public String subscriptionList() {// 개인회원이 보는 구독기업공고탭(구독기업 공고 목록보기)
        return "employee/subscription";
    }

    @GetMapping("/emp/companyList")
    public String companyList() {// 개인회원이 보는 기업정보탭(기업소개 목록보기)
        return "employee/companyList";
    }

    @GetMapping("/emp/companyIntroDetail")
    public String 기업소개상세보기() {// 개인회원이 intro 테이블 기업소개 상세보기
        return "employee/coIntroDetail";
    }

    @GetMapping("/emp/mypageInsertForm")
    public String mypageResumeInsert() {// 이력서 등록, 수정, 삭제, 대표 이력서 선택
        return "employee/mypageInsertForm";
    }

    @PutMapping("/emp/employeeInfo/{id}")
    public @ResponseBody CMRespDto<?> 회원정보수정(@PathVariable Integer employeeId,
            @RequestBody EmployeeUpdateDto employeeUpdateDto) {
        employeeService.employeeUpdate(employeeId, employeeUpdateDto);
        return new CMRespDto<>(1, "회원수정성공", null);
    }

    @GetMapping("/emp/{id}/employeeInfo")
    public String 회원정보수정페이지(@PathVariable Integer employeeId, Model model) {// 개인회원 회원가입 정보수정
        Employee employee = employeeService.회원정보수정데이터가져오기(employeeId);
        model.addAttribute("employee", employee);
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
