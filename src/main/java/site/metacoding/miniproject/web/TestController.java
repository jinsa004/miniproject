package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    

    @GetMapping("/co/coIntroUpdate")
    public String 기업소개등록페이지() {
        return "company/coIntroUpdate";
    }
}
