package site.metacoding.miniproject.domain.image.resume;

import java.util.List;

import site.metacoding.miniproject.web.dto.request.image.resume.ResumeImageDto;

public interface ResumeImageDao {

    public List<ResumeImage> findAll();

    public ResumeImage findById(Integer resumeImageId);

    public void insert(ResumeImageDto resumeImageDto);

    public void update(ResumeImage resumeImage);

    public void deleteById(ResumeImage resumeImageId);
}
