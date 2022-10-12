package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.web.dto.LoginDto;

@Service
@RequiredArgsConstructor
public class CompanyService {
    
    private final CompanyDao companyDao;

    public Company 로그인(LoginDto loginDto){
        Company companyPS = companyDao.findByCompanyUsername(loginDto.getCompanyUsername());
		
		if (companyPS.getCompanyPassword().equals(loginDto.getCompanyPassword())) {
			return companyPS;
		}
		return null;
    }
}
