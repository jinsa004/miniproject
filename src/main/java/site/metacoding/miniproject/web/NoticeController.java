package site.metacoding.miniproject.web;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.notice.Notice;
import site.metacoding.miniproject.service.NoticeService;

@RequiredArgsConstructor
@Controller
public class NoticeController {

    private final NoticeService noticeService;

    @GetMapping("co/supCompany/{companyId}")
    public String myNoticeFindAll(@PathVariable Integer companyId, Model model) {
        List<Notice> noticeList = noticeService.내공고목록보기(companyId);
        model.addAttribute("noticeList", noticeList);
        return "company/supporter";
    }

    @GetMapping("emp/noticeDetail")
    public String recruitDetail() {// 개인회원 입장에서 채용공고 상세보기
        return "employee/noticeDetail";
    }

    @GetMapping("co/noticeDetail")
    public String noticeDetail() {// 기업회원 입장에서 채용공고 상세보기
        return "company/noticeDetail";
    }

    @GetMapping("co/noticeSave")
    public String 공고등록() {
        return "notice/noticeSave";
    }

    @GetMapping("co/noticeUpdate")
    public String 공고수정() {
        return "notice/noticeUpdate";
    }

}
