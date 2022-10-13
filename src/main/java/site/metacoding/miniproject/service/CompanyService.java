package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.request.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.JoinDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;

@Service
@RequiredArgsConstructor
public class CompanyService {

  private final CompanyDao companyDao;

  public Company 로그인(LoginDto loginDto) {
    Company companyPS = companyDao.findByCompanyUsername(loginDto.getCompanyUsername());

    if (companyPS.getCompanyPassword().equals(loginDto.getCompanyPassword())) {
      return companyPS;
    }
    return null;
  }

  public void 회원가입(JoinDto joinDto) {
    Company company = joinDto.toEntity(joinDto);
    companyDao.insert(company);
  }

  public Company 기업정보관리(Integer companyId) {
    return companyDao.findById(companyId);
  }

  public void 기업정보수정(Integer companyId, CompanyUpdateDto companyupdateDto) {
    Company companyPS = companyDao.findById(companyId);
    companyPS.update(companyupdateDto);
    companyDao.update(companyPS);
  }

}
