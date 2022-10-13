package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;

@RequiredArgsConstructor
@Service
public class CompanyService {

    private final CompanyDao companyDao;

    public Company 기업상세보기(Integer companyId) {
        return companyDao.findById(companyId);
    }
}
