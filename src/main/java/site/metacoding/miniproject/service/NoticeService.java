package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.notice.Notice;
import site.metacoding.miniproject.domain.notice.NoticeDao;
import site.metacoding.miniproject.web.dto.request.notice.NoticeUpdateDto;

@Service
@RequiredArgsConstructor
public class NoticeService {

    private final NoticeDao noticeDao;

    public List<Notice> 채용공고전체목록보기() {
        return noticeDao.findAll();
    }

    public List<Notice> 채용공고분야별목록보기(Integer jobCode) {
        return noticeDao.findByJobCodeToNotice(jobCode);
    }

    public List<Notice> 내공고목록보기(Integer companyId) {
        return noticeDao.findByCompanyId(companyId);
    }

    public Notice 내공고하나보기(Integer noticeId) {
        return noticeDao.findById(noticeId);
    }

    public void 이력서수정(Integer resumeId, NoticeUpdateDto noticeUpdateDto) {
        Notice noticePS = noticeDao.findById(resumeId);
        noticePS.update(noticeUpdateDto);
        noticeDao.update(noticePS);
    }

    public void 공고등록(Notice notice) {
        noticeDao.insert(notice);
    }

}