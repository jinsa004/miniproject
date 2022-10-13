package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.request.company.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.JoinDto;
import site.metacoding.miniproject.web.dto.request.company.CompanyLoginDto;

@Service
@RequiredArgsConstructor
public class CompanyService {

  private final CompanyDao companyDao;

  public Company 로그인(CompanyLoginDto loginDto) {
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

  public Company 기업정보수정(Integer companyId, CompanyUpdateDto companyUpdateDto) {
    Company companyPS = companyDao.findById(companyId);
    companyPS.update(companyUpdateDto);
    companyDao.update(companyPS);
    return companyPS;
  }

  public void 기업회원탈퇴(Integer companyId) {
    companyDao.deleteById(companyId);
  }
}
