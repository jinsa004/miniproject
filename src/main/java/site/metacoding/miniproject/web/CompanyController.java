package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.CompanyService;
import site.metacoding.miniproject.web.dto.request.company.UpdateDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class CompanyController {

    private final CompanyService companyService;

    @GetMapping("/co/main")
    public String main() {// 개인회원이 보는 메인페이지
        return "company/mainCompany";
    }

    @GetMapping("/co/mainCompany")
    public String companyMain() {// 기업회원이 보는 메인페이지
        return "company/mainCompany";
    }

    @GetMapping("/co/supCompany")
    public String supportList() {// 기업회원이 보는 공고/지원자관리 탭
        return "company/supporter";
    }

    @GetMapping("/co/matchingResume")
    public String companyMatchingList() {// 기업회원이 보는 이력서 매칭리스트
        return "company/matchingResume";
    }

    @GetMapping("/co/companyInfo")
    public String 기업정보() {// 기업회원 회원가입 정보 수정할 때 쓰는 거 company 테이블
        return "company/companyInfo";
    }

    @GetMapping("/co/companyIntroDetail")
    public String 기업소개입력() {// 기업소개 상세보기 intro 테이블
        return "company/coIntroDetail";
    }

    // @GetMapping("/co/companyIntroUpdate")
    // public String 마이페이지() {// 기업소개 상세보기 수정하기 intro 테이블
    // return "company/coIntroUpdate";
    // }

    @GetMapping("/co/companyIntroUpdate/{companyId}")
    public String getCompanyUpdate(@PathVariable Integer companyId, Model model) {
        model.addAttribute("company", companyService.기업상세보기(companyId));
        return "company/coIntroUpdate";
    }

    @PutMapping("/co/companyIntroUpdate/{companyId}/update")
    public @ResponseBody CMRespDto<?> putCompanyUpdate(@PathVariable Integer companyId,
            @RequestBody UpdateDto updateDto) {
        companyService.기업소개수정하기(companyId, updateDto);
        return new CMRespDto<>(1, "수정성공", null);
    }
}
