package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.check.company.CoCheckDao;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.request.company.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.company.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.company.CompanyLoginDto;

@Service
@RequiredArgsConstructor
public class CompanyService {

  private final CompanyDao companyDao;
  private final CoCheckDao coCheckDao;

  public Company 로그인(CompanyLoginDto loginDto) {
    Company companyPS = companyDao.findByCompanyUsername(loginDto.getCompanyUsername());

    if (companyPS.getCompanyPassword().equals(loginDto.getCompanyPassword())) {
      return companyPS;
    }
    return null;
  }

  @Transactional
  public void 회원가입(CompanyJoinDto companyJoinDto) {
    Company company = companyJoinDto.toEntity(companyJoinDto);
    companyDao.insert(company);

    for (Integer jobId : companyJoinDto.getJobIds()) {
      coCheckDao.insert(company.getCompanyId(), jobId);
    }
  }

  public Company 기업소개하나보기(Integer companyId) {
    return companyDao.findById(companyId);
  }

  public Company 기업소개수정(Integer companyId, CompanyUpdateDto companyUpdateDto) {
    Company companyPS = companyDao.findById(companyId);
    companyPS.update(companyUpdateDto);
    companyDao.update(companyPS);
    return companyPS;
  }

  public void 기업회원탈퇴(Integer companyId) {
    companyDao.deleteById(companyId);
  }
}
