package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController {

    @GetMapping("/co/main")
    public String main() {// 개인회원이 보는 메인페이지
        return "company/mainCompany";
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

}
