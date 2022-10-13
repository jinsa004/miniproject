package site.metacoding.miniproject.domain.resume;

import java.util.List;

import site.metacoding.miniproject.web.dto.request.resume.UpdateDto;

public interface ResumeDao {
    public List<Resume> findAll();

    public Resume findById(Integer resumeId);

    public void insert(Resume resume);

    public void update(Integer resumeId, UpdateDto updateDto);

    public void deleteById(Integer resumeId);

    public void update(Resume resumePS);
}
