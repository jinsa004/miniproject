package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.request.company.UpdateDto;

@RequiredArgsConstructor
@Service
public class CompanyService {

    private final CompanyDao companyDao;

    public Company 기업상세보기(Integer companyId) {
        return companyDao.findById(companyId);
    }

    public void 기업소개수정하기(Integer companyId, UpdateDto updateDto) {
        Company companyPS = companyDao.findById(companyId);
        companyPS.Update(updateDto);
        companyDao.update(companyPS);
    }
}
