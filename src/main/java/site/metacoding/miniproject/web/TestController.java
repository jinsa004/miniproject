package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/emp/empInfo")
    public String 인재상세페이지() {
        return "employee/empInfo";
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
