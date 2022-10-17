package site.metacoding.miniproject.domain.check.employee;

import org.apache.ibatis.annotations.Param;

public interface EmpCheckDao {

    public void insert(@Param("employeeId") Integer employeeId, @Param("jobId") Integer jobId);

    public void updateByEmployeeId();

    public void deleteById(Integer applicationId);

}
