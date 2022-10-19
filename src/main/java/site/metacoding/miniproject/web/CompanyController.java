package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.job.Job;
import site.metacoding.miniproject.service.CompanyService;
import site.metacoding.miniproject.service.ImageService;
import site.metacoding.miniproject.service.IntroService;
import site.metacoding.miniproject.service.JobService;
import site.metacoding.miniproject.web.dto.request.company.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.company.CompanyLoginDto;
import site.metacoding.miniproject.web.dto.request.company.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.intro.IntroInsertDto;
import site.metacoding.miniproject.web.dto.request.intro.UpdateDto;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@RequiredArgsConstructor
@Controller
public class CompanyController {

    private final CompanyService companyService;
    private final HttpSession session;
    private final IntroService introService;
    private final JobService jobService;
    private final ImageService imageService;

    @PostMapping("/co/login")
    public @ResponseBody CMRespDto<?> login(@RequestBody CompanyLoginDto loginDto, HttpServletResponse response) {
        System.out.println("===============");
        System.out.println(loginDto.isRemember());
        System.out.println("===============");

        // if (loginDto.isRemember() == true) {
        // Cookie cookie = new Cookie("companyUsername", loginDto.getCompanyUsername());
        // cookie.setMaxAge(60 * 60 * 24);
        // response.addCookie(cookie);

        // } else {
        // Cookie cookie = new Cookie("companyUsername", null);
        // cookie.setMaxAge(0);
        // response.addCookie(cookie);
        // }

        Company principal = companyService.로그인(loginDto);
        if (principal == null) {
            return new CMRespDto<>(-1, "로그인실패", null);
        }
        session.setAttribute("coprincipal", principal);
        return new CMRespDto<>(1, "로그인성공", null);
    }

    @GetMapping("/co/companyInfo/{companyId}")
    public String 기업정보관리(@PathVariable Integer companyId, Model model) {// 기업회원 회원가입 정보 수정할 때 쓰는 거 company 테이블
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        Company companyPS = (Company) session.getAttribute("coprincipal");
        model.addAttribute("company", companyPS);
        return "company/companyInfo";
    }

    @PutMapping("/co/companyUpdate/{companyId}")
    public @ResponseBody CMRespDto<?> companyUpdate(@PathVariable Integer companyId,
            @RequestBody CompanyUpdateDto companyupdateDto) {
        Company companyPS = companyService.기업회원정보수정(companyId, companyupdateDto);
        session.setAttribute("coprincipal", companyPS);
        return new CMRespDto<>(1, "수정성공", null);
    }

    @DeleteMapping("/co/companyDelete/{companyId}")
    public @ResponseBody CMRespDto<?> companyDelete(@PathVariable Integer companyId) {
        companyService.기업회원탈퇴(companyId);
        session.invalidate();
        return new CMRespDto<>(1, "기업탈퇴성공", null);
    }

    @GetMapping("/co/companyIntroInsert")
    public String 기업소개등록폼(Model model) {// 추가함
        session.getAttribute("coprincipal");
        List<Job> jobPS = jobService.관심직무보기();
        model.addAttribute("jobPS", jobPS);
        return "company/coIntroInsert";
    }

    @PostMapping("/co/companyIntroInsert")
    public @ResponseBody CMRespDto<?> 기업소개등록(IntroInsertDto introInsertDto) throws Exception {
        Integer introImageId = imageService.introInsertImage(introInsertDto.getImage(), introInsertDto.getCompanyId());
        introInsertDto.setIntroImageId(introImageId);
        introService.기업소개등록(introInsertDto);
        return new CMRespDto<>(1, "기업소개 등록 성공", null);
    }

    @GetMapping("/co/companyIntroDetail")
    public String 기업소개상세() {// 기업소개 상세보기 intro 테이블
        return "company/coIntroDetail";
    }

    @GetMapping("/co/companyIntroUpdate/{companyId}")
    public String getIntroUpdate(@PathVariable Integer companyId, Model model) {
        session.getAttribute("coprincipal");
        model.addAttribute("intro", introService.기업소개수정상세보기(companyId));
        return "company/coIntroUpdate";
    }

    @PutMapping("/co/companyIntroUpdate/{companyId}/update")
    public @ResponseBody CMRespDto<?> putIntroUpdate(@PathVariable Integer companyId,
            @RequestBody UpdateDto updateDto) {
        introService.기업소개수정하기(companyId, updateDto);
        return new CMRespDto<>(1, "수정성공", null);
    }

    @PostMapping("/co/join")
    public @ResponseBody CMRespDto<?> companyJoin(@RequestBody CompanyJoinDto companyJoinDto) {
        companyService.회원가입(companyJoinDto);
        return new CMRespDto<>(1, "회원가입성공", null);
    }

    @GetMapping("/co/usernameSameCheck")
    public @ResponseBody CMRespDto<?> usernameSameCheck(String companyUsername) {
        System.out.println("company이름:" + companyUsername);
        boolean isSame = companyService.회사유저네임중복확인(companyUsername);
        return new CMRespDto<>(1, "성공", isSame);
    }

    @GetMapping("/co/logout")
    public String Companylogout() {
        session.invalidate();
        return "redirect:/co";
    }

    // =========================== 유효성체크 ======================================
    @GetMapping("co/checkPasswordCo")
    public @ResponseBody CMRespDto<Boolean> checkPasswordCo(String companyPassword) {
        boolean isSame = companyService.회사비밀번호2차체크(companyPassword);
        return new CMRespDto<>(1, "성공", isSame);
    }

    @GetMapping("co/checkEmailCo")
    public @ResponseBody CMRespDto<Boolean> checkEmailCo(String companyEmail) {
        boolean isSame = companyService.회사이메일형식체크(companyEmail);
        return new CMRespDto<>(1, "성공", isSame);
    }
}
