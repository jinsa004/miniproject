package site.metacoding.miniproject.domain.intro;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import site.metacoding.miniproject.web.dto.request.intro.DetailDto;

public interface IntroDao {
	public List<Intro> findAll();

	public Intro findById(Integer introId);

	public void insert(Intro intro);

	public void update(Intro intro);

	public void deleteById(Integer introId);

	public DetailDto findByDetail(@Param("introId") Integer introId, @Param("principalId") Integer principalId);
}
