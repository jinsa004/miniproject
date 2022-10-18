package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.check.employee.EmpCheckDao;
import site.metacoding.miniproject.domain.employee.Employee;
import site.metacoding.miniproject.domain.employee.EmployeeDao;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeJoinDto;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeLoginDto;
import site.metacoding.miniproject.web.dto.request.employee.EmployeeUpdateDto;

@RequiredArgsConstructor
@Service
public class EmployeeService {

    private final EmployeeDao employeeDao;
    private final EmpCheckDao empCheckDao;

    public void employeeDelete(Integer employeeId) {
        employeeDao.deleteById(employeeId);
    }

    public Employee employeeUpdate(Integer employeeId, EmployeeUpdateDto employeeUpdateDto) {
        Employee employeePS = employeeDao.findById(employeeId);
        employeePS.update(employeeUpdateDto);
        employeeDao.update(employeePS);
        return employeePS;
    }

    public Employee 로그인(EmployeeLoginDto loginDto) {
        Employee employeePS = employeeDao.findByEmployeeUsername(loginDto.getEmployeeUsername());

        // if (employeePS.getEmployeePassword().equals(loginDto.getEmployeePassword()))
        if (employeePS != null && employeePS.getEmployeePassword().equals(loginDto.getEmployeePassword())) {
            return employeePS;
        }
        return null;
    }

    @Transactional
    public void employeeJoin(EmployeeJoinDto employeeJoinDto) {
        Employee employee = employeeJoinDto.toEntity(employeeJoinDto);
        employeeDao.insert(employee);

        for (Integer jobId : employeeJoinDto.getJobIds()) {
            empCheckDao.insert(employee.getEmployeeId(), jobId);
        }
    }

    public Employee employeeUpdate(Integer employeeId) {
        return null;
    }

    // =========================== 유효성체크 ======================================
    public boolean 유저네임중복확인(String employeeUsername) {
        Employee employeePS = employeeDao.findByEmployeeUsername(employeeUsername);
        if (employeePS == null)
            return false;
        return true;
        // 있으면 true, 없으면 false
    }

    public boolean 비밀번호2차체크(String employeePassword) {
        employeeDao.findByEmployeePassword(employeePassword);
        return true;
    }

    public boolean 이메일형식체크(String employeePassword) {
        Employee employeePS = employeeDao.findByEmployeeEmail(employeePassword);
        if (employeePS == null)
            return false;
        return true;
    }
}
