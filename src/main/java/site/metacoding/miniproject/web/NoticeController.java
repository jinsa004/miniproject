package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.job.Job;
import site.metacoding.miniproject.domain.notice.Notice;
import site.metacoding.miniproject.service.JobService;
import site.metacoding.miniproject.service.NoticeService;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class NoticeController {

    private final NoticeService noticeService;
    private final HttpSession session;
    private final JobService jobService;

/*=============================개인회원========================================= */

    @GetMapping({"emp/main","emp","/"}) // ({ "emp/", "emp/notice" }) 로 두 개 걸어주는 것 불가 (쿼리스트링시 매핑 주소 "notice"가 중복되기 때문)
    public String getAllNoticeList(Model model) {
        List<Notice> noticeAllList = noticeService.채용공고전체목록보기();
        model.addAttribute("noticeAllList", noticeAllList);
        return "employee/main";
    }

    @GetMapping("emp/notice")
    public String getJobNoticeList(@RequestParam("jobCode") Integer jobCode, Model model) {
        List<Notice> jobNoticeList = noticeService.채용공고분야별목록보기(jobCode);
        model.addAttribute("jobNoticeList", jobNoticeList);
        return "employee/jobNotice";
    }

    @GetMapping("emp/noticeDetail") // notice/Detail로 들어가는게 좋을 것 같습니다
    public String recruitDetail() {// 개인회원 입장에서 채용공고 상세보기
        return "employee/noticeDetail";
    }

/*=============================기업회원========================================= */

    @GetMapping("co/noticeDetail")
    public String noticeDetail() {// 기업회원 입장에서 채용공고 상세보기
        return "company/noticeDetail";
    }

    @GetMapping("co/noticeSave/{companyId}")
    public String 공고등록(@PathVariable Integer companyId, Model model) {
        session.getAttribute("principal");
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        return "notice/noticeSave";
    }
    

    @PostMapping("co/noticeSave")
    public @ResponseBody CMRespDto<?> insert(@RequestBody Notice notice){
        noticeService.공고등록(notice);
        return new CMRespDto<>(1,"통신성공",null);
    }

    @GetMapping("co/noticeUpdate")
    public String 공고수정() {
        return "notice/noticeUpdate";
    }

    @GetMapping("co/supCompany/{companyId}")
    public String FindAllmyNotice(@PathVariable Integer companyId, Model model) { // 메서드이름은 동사여야 하지 않나요
        List<Notice> noticeList = noticeService.내공고목록보기(companyId);
        model.addAttribute("noticeList", noticeList);
        return "company/supporter";
    }
}
