package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.check.employee.EmpCheck;
import site.metacoding.miniproject.domain.check.employee.EmpCheckDao;

@RequiredArgsConstructor
@Service
public class CheckService {
    private final EmpCheckDao empCheckDao;

    public void checkboxInsert(Integer employeeId, List<Integer> jobId) {
        empCheckDao.insert(employeeId, jobId);
    }
}