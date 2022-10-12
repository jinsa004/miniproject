package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.domain.resume.ResumeDao;

@RequiredArgsConstructor
@Service
public class ResumeService {

    private final ResumeDao resumeDao;

    public void 이력서작성(Resume resume) {
        resumeDao.insert(resume);
    }

    public Resume 이력서상세보기(Integer resumeId) {
        return resumeDao.findById(resumeId);
    }
}
