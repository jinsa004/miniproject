package site.metacoding.miniproject.domain.intro;

import java.util.List;

public interface IntroDao {
	public List<Intro> findAll();

	public Intro findById(Integer introId);

	public void insert(Intro intro);

	public void update(Intro intro);

	public void deleteById(Integer introId);
}
