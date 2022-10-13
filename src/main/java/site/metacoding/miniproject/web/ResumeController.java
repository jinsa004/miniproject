package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeController {

    @GetMapping("co/resumeList")
    public String resumeList() { // 기업회원이 보는 이력서리스트**
        return "company/resumeList";
    }

    @GetMapping("co/resumeDetail")
    public String 이력서상세보기() { // 이력서 상세보기 페이지
        return "company/resumeDetail";
    }

    @GetMapping("emp/resumeSave")
    public String 이력서등록() { // 이력서 등록 페이지
        return "resume/resumeSave";
    }

    @GetMapping("emp/resumeUpdate")
    public String 이력서수정() { // 이력서 수정 페이지
        return "resume/resumeUpdate";
    }

}
