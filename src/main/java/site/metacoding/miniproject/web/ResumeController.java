package site.metacoding.miniproject.web;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.job.Job;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.service.JobService;
import site.metacoding.miniproject.service.ResumeService;
import site.metacoding.miniproject.web.dto.request.resume.UpdateDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class ResumeController {

    private final ResumeService resumeService;
    private final JobService jobService;
    private final HttpSession session;

    /* =============================개인회원========================================= */

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

    @GetMapping("emp/resumeUpdate/{resumeId}")
    public String updateResumeForm(@PathVariable Integer resumeId, Model model) { // 이력서 수정 페이지
        session.getAttribute("principal");
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        Resume resumePS = resumeService.이력서상세보기(resumeId);
        model.addAttribute("resumePS", resumePS);
        return "resume/resumeUpdate";
    }

    @PutMapping("emp/resumeUpdate/{resumeId}")
    public @ResponseBody CMRespDto<?> updateResume(@PathVariable Integer resumeId, @RequestBody UpdateDto updateDto) {
        resumeService.이력서수정(resumeId, updateDto);
        return new CMRespDto<>(1, "이력서 등록 성공", null);
    }

    /* =============================기업회원========================================= */

    @GetMapping("co")
    public String getAllResumeList(Model model) { // 기업회원이 보는 이력서리스트
        List<Resume> resumeAllList = resumeService.이력서목록보기();
        model.addAttribute("resumeAllList", resumeAllList);
        return "company/mainCompany";
    }

    @GetMapping("co/resume")
    public String getJobResumeList(@RequestParam("jobCode") Integer jobCode, Model model) {
        List<Resume> jobResumeList = resumeService.이력서분야별목록보기(jobCode);
        model.addAttribute("jobResumeList", jobResumeList);
        return "company/jobResume";
    }

    @GetMapping("co/resumeDetail")
    public String 이력서상세보기() { // 이력서 상세보기 페이지
        return "company/resumeDetail";
    }

    @GetMapping("co/resumeDetail/{resumeId}")
    public String getResumeDetail(@PathVariable Integer resumeId, Model model) {
        model.addAttribute("resume", resumeService.이력서상세보기(resumeId));
        return "company/resumeDetail";
    }

    // 나중에 지원자 관리 메서드 생성 필요 (resumeList.jsp)
}
