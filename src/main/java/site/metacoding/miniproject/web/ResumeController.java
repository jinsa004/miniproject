package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.Service.ResumeService;

@RequiredArgsConstructor
@Controller
public class ResumeController {

    private final ResumeService resumeService;


    @GetMapping("co/resumeList")
    public String resumeList() { // 기업회원이 보는 이력서리스트**
        return "company/resumeList";
    }

    // @GetMapping("co/resumeDetail")
    // public String 이력서상세보기() { // 이력서 상세보기 페이지
    //     return "company/resumeDetail";
    // }

    @GetMapping("co/resumeDetail/{resumeId}")
    public String getResumeDetail(@PathVariable Integer resumeId, Model model) {
        model.addAttribute("resume", resumeService.이력서상세보기(resumeId));
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
