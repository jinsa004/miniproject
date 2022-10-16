package site.metacoding.miniproject.domain.check.employee;

import java.util.List;

public interface CoCheckDao {
    public List<CoCheck> findAll();

    public CoCheck findById(Integer coCheckId);

    public void insert(CoCheck coCheck);

    public void update(CoCheck coCheck);

    public void deleteById(CoCheck coCheckId);
}
