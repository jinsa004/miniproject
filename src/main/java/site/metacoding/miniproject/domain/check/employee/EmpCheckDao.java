package site.metacoding.miniproject.domain.check.employee;

import java.util.List;

public interface EmpCheckDao {
    public List<EmpCheck> findAll();

    public EmpCheck findById(Integer empCheckId);

    public void insert(EmpCheck empCheck);

    public void update(EmpCheck empCheck);

    public void deleteById(EmpCheck empCheckId);
}
