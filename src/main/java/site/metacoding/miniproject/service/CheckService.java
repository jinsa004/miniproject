package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.check.employee.EmpCheckDao;

@RequiredArgsConstructor
@Service
public class CheckService {

    public void checkboxInsert(Integer employeeId, List<Integer> jobIds) {
        System.out.println("=====임플로이아이디나와야함===");
        System.out.println(employeeId);
        System.out.println("=====임플로이아이디나와야함===");

    }
}
