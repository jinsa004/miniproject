package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.notice.Notice;
import site.metacoding.miniproject.domain.notice.NoticeDao;

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

    public void 공고등록(Notice notice){
        noticeDao.insert(notice);
    }
}