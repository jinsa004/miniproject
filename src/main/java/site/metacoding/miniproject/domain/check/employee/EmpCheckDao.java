package site.metacoding.miniproject.domain.check.employee;

import java.util.List;

public interface EmpCheckDao {

    public void insert(Integer employeeId, List<Integer> jobId);

    public void updateByEmployeeId();

    public void deleteById(Integer applicationId);
}
