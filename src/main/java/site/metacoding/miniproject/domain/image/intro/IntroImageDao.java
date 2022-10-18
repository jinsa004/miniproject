package site.metacoding.miniproject.domain.image.intro;

import java.util.List;

public interface IntroImageDao {

    public List<IntroImage> findAll();

    public IntroImage findById(Integer introImageId);

    public void insert(IntroImage introImage);

    public void update(IntroImage introImage);

    public void deleteById(IntroImage introImageId);
}
