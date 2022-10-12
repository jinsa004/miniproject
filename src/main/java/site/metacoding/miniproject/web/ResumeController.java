package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.job.Job;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.service.JobService;
import site.metacoding.miniproject.service.ResumeService;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class ResumeController {

    private final ResumeService resumeService;
    private final JobService jobService;
    private final HttpSession session;

    @GetMapping("co/resumeList")
    public String resumeList() { // 기업회원이 보는 이력서리스트**
        return "company/resumeList";
    }

    @GetMapping("co/resumeDetail")
    public String resumeDetail() { // 이력서 상세보기 페이지
        return "company/resumeDetail";
    }

    @GetMapping("emp/resumeSaveForm/{employeeId}")
    public String insertResumeForm(@PathVariable Integer employeeId, Model model) { // 이력서 등록 페이지
        session.getAttribute("principal");
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        return "resume/resumeSave";
    }

    @PostMapping("emp/resumeSave")
    public @ResponseBody CMRespDto<?> insertResume(@RequestBody Resume resume) {
        resumeService.이력서작성(resume);
        return new CMRespDto<>(1, "이력서 등록 성공", null);
    }

    @GetMapping("emp/resumeUpdate")
    public String 이력서수정() { // 이력서 수정 페이지
        return "resume/resumeUpdate";
    }

}
