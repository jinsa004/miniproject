package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

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
