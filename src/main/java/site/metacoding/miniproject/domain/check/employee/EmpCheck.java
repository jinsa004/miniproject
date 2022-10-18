package site.metacoding.miniproject.domain.check.employee;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter

public class EmpCheck {
    private Integer empCheckId;
    private Integer employeeId;
    private Integer jobId;
}
