package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.intro.Intro;
import site.metacoding.miniproject.domain.intro.IntroDao;
import site.metacoding.miniproject.web.dto.request.intro.UpdateDto;

@RequiredArgsConstructor
@Service
public class IntroService {

    private final IntroDao introDao;

    public Intro 기업소개상세보기(Integer companyId) {
        return introDao.findById(companyId);
    }

    public void 기업소개수정하기(Integer companyId, UpdateDto updateDto) {
        Intro introPS = introDao.findById(companyId);
        introPS.Update(updateDto);
        introDao.update(introPS);
    }
}
