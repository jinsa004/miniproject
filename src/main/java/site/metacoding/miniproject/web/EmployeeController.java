package site.metacoding.miniproject.web.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {

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

    @GetMapping("/emp/employeeInfo")
    public String 회원정보() {// 개인회원 회원가입 정보 수정/탈퇴 페이지
        return "employee/empInfo";
    }

}
