package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.intro.Intro;
import site.metacoding.miniproject.domain.intro.IntroDao;

@RequiredArgsConstructor
@Service
public class IntroService {

    private final IntroDao introDao;

    public List<Intro> 기업소개목록보기() {
        return introDao.findAll();
    }

    public Intro 기업소개상세보기(Integer intoId) {
        return introDao.findById(intoId);
    }
}