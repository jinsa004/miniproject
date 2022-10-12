package site.metacoding.miniproject.service.employee;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.employee.Employee;
import site.metacoding.miniproject.domain.employee.EmployeeDao;
import site.metacoding.miniproject.web.dto.employee.EmployeeUpdateDto;

@RequiredArgsConstructor
@Service
public class EmployeeService {

    private final EmployeeDao employeeDao;

    public Employee 회원정보수정데이터가져오기(Integer employeeId) {
        Employee employee = employeeDao.findById(employeeId);
        return employee;
    }

    public void employeeUpdate(Integer employeeId, EmployeeUpdateDto employeeUpdateDto) {
        Employee employeePS = employeeDao.findById(employeeId);
        employeePS.update(employeeUpdateDto);
        employeeDao.update(employeePS);
    }

    public void employeeJoin(Employee employee) {
        employeeDao.insert(employee);
    }
}
