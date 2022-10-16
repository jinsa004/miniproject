package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {


    @GetMapping("/co/resumeList")
    public String 공고지원자리스트() {
        return "company/resumeList";
    }

    @GetMapping("/emp/resumeDetail")
    public String 이력서상세보기() {
        return "employee/resumeDetail";
    }

    @GetMapping("/emp/companyIntroDetail")
    public String 기업소개상세페이지() {
        return "employee/coIntroDetail";
    }

    @GetMapping("/co/coIntroUpdate")
    public String 기업소개등록페이지() {
        return "company/coIntroUpdate";
    }
}
