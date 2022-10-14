package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.domain.resume.ResumeDao;
import site.metacoding.miniproject.web.dto.request.resume.UpdateDto;

@RequiredArgsConstructor
@Service
public class ResumeService {

    private final ResumeDao resumeDao;

    public List<Resume> 이력서목록보기() {
        return resumeDao.findAll();
    }

    public List<Resume> 이력서분야별목록보기(Integer jobCode) {
        return resumeDao.findByJobCodeToResume(jobCode);
    }

    public void 이력서작성(Resume resume) {
        resumeDao.insert(resume);
    }

    public Resume 이력서상세보기(Integer resumeId) {
        return resumeDao.findById(resumeId);
    }

    public void 이력서수정(Integer resumeId, UpdateDto updateDto) {
        Resume resumePS = resumeDao.findById(resumeId);
        resumePS.update(updateDto);
        resumeDao.update(resumePS);
    }

    public List<Resume> 내이력서가져오기(Integer employeeId) {
        List<Resume> resumePS = resumeDao.findByEmployeeId(employeeId);
        return resumePS;
    }
}
