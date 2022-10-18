package site.metacoding.miniproject.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.intro.Intro;
import site.metacoding.miniproject.domain.intro.IntroDao;
import site.metacoding.miniproject.domain.subscribe.Subscribe;
import site.metacoding.miniproject.domain.subscribe.SubscribeDao;
import site.metacoding.miniproject.web.dto.request.intro.DetailDto;
import site.metacoding.miniproject.web.dto.request.intro.UpdateDto;

@RequiredArgsConstructor
@Service
public class IntroService {

    private final IntroDao introDao;
    private final SubscribeDao subscribeDao;
    private final HttpSession session;

    public Intro 마이페이지설정(Integer companyId) {// 기업이 보는 마이페이지
        Intro intro = introDao.findById(companyId);
        return intro;
    }

    public void 기업소개등록(Intro intro) {
        introDao.insert(intro);
    }

    public List<Intro> 기업소개목록보기() {
        return introDao.findAll();
    }

    public DetailDto 기업소개상세보기(Integer companyId, Integer principalId) {// 개인이 보는 기업상세보기
        return introDao.findByDetail(companyId, principalId);
    }

    public Intro 기업소개수정상세보기(Integer companyId) {// 기업이 보는 마이페이지
        Intro intro = introDao.findById(companyId);
        Company principal = (Company) session.getAttribute("principal");
        // 비정상 요청 체크
        if (intro == null) {
            throw new RuntimeException("잘못된 접근입니다");
        }
        // 인증체크
        if (principal == null) {
            throw new RuntimeException("로그인하세요");
        }
        // 권한체크
        if (principal.getCompanyId() != intro.getCompanyId()) {
            throw new RuntimeException("잘못접근");
        }
        return intro;
    }

    public void 기업소개수정하기(Integer companyId, UpdateDto updateDto) {
        Intro introPS = introDao.findById(companyId);
        Company principal = (Company) session.getAttribute("principal");
        // 비정상 요청 체크
        if (introPS == null) {
            throw new RuntimeException("잘못된 접근입니다");
        }
        // 인증체크
        if (principal == null) {
            throw new RuntimeException("로그인하세요");
        }
        // 권한체크
        if (principal.getCompanyId() != introPS.getCompanyId()) {
            throw new RuntimeException("잘못된 접근입니다2");
        }

        introPS.Update(updateDto);
        introDao.update(introPS);
    }

    public Subscribe 구독하기(Subscribe subscribe) {
        subscribeDao.insert(subscribe);
        return subscribe;
    }

    public void 구독취소하기(Integer subscribeId) {
        subscribeDao.deleteById(subscribeId);
    }
}
