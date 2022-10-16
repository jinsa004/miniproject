package site.metacoding.miniproject.domain.check.employee;

public interface EmpCheckDao {

    public void insert(Integer employeeId, Integer jobId);

    public void updateByEmployeeId();

    public void deleteById(Integer applicationId);
}
