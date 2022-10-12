package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.request.JoinDto;

@RequiredArgsConstructor
@Service
public class CompanyService {
  private final CompanyDao companyDao;

  public void 회원가입(JoinDto joinDto) {
    Company company = joinDto.toEntity(joinDto);
    companyDao.insert(company);
  }

}
