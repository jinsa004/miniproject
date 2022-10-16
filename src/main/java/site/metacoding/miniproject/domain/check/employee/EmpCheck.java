package site.metacoding.miniproject.domain.check.employee;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmpCheck {
    private Integer empCheckId;
    private Integer employeeId;
    private Integer jobId;
}
