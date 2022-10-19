package site.metacoding.miniproject.domain.image.resume;

import java.util.List;

public interface ResumeImageDao {

    public List<ResumeImage> findAll();

    public ResumeImage findById(Integer resumeImageId);

    public void insert(ResumeImage resumeImage);

    public void update(ResumeImage resumeImage);

    public void deleteById(ResumeImage resumeImageId);
}
