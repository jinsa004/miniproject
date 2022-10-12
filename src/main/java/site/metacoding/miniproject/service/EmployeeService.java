package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.employee.Employee;
import site.metacoding.miniproject.domain.employee.EmployeeDao;
import site.metacoding.miniproject.web.dto.LoginDto;

@Service
@RequiredArgsConstructor
public class EmployeeService {
    private final EmployeeDao employeeDao;

    public Employee 로그인(LoginDto loginDto) {
        Employee employeePS = employeeDao.findByEmployeeUsername(loginDto.getEmployeeUsername());

        if (employeePS.getEmployeePassword().equals(loginDto.getEmployeePassword())) {
            return employeePS;
        }
        return null;
    }

    public void employeeJoin(Employee employee) {
        employeeDao.insert(employee);
    }
}
