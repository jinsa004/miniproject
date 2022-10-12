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

    public List<Notice> 내공고목록보기(Integer companyId){
        return noticeDao.findByCompanyId(companyId);
    }
}
