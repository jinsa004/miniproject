package site.metacoding.miniproject.domain.company;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.company.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.JoinDto;

@NoArgsConstructor
@Setter
@Getter
public class Company {
	private Integer companyId;
	private Integer companyNumber;
	private String companyName;
	private String companyEmail;
	private String companyTel;
	private String companyLocation;
	private String companyUsername;
	private String companyPassword;
	private Integer jobId;

	// 엔티티 필드 아님
	private Integer employeeId;

	// public Company(Integer companyNumber, String companyName, String
	// companyEmail, String companyTel,
	// String companyLocation, String companyUsername, String companyPassword,
	// Integer jobId) {
	// this.companyNumber = companyNumber;
	// this.companyName = companyName;
	// this.companyEmail = companyEmail;
	// this.companyTel = companyTel;
	// this.companyLocation = companyLocation;
	// this.companyUsername = companyUsername;
	// this.companyPassword = companyPassword;
	// this.jobId = jobId;
	// }

	public Company(JoinDto joinDto) {
		this.companyNumber = joinDto.getCompanyNumber();
		this.companyName = joinDto.getCompanyName();
		this.companyEmail = joinDto.getCompanyEmail();
		this.companyTel = joinDto.getCompanyTel();
		this.companyLocation = joinDto.getCompanyLocation();
		this.companyUsername = joinDto.getCompanyUsername();
		this.companyPassword = joinDto.getCompanyPassword();
		this.jobId = joinDto.getJobId();
	}

	public void update(CompanyUpdateDto companyupdateDto) {
		this.companyNumber = companyupdateDto.getCompanyNumber();
		this.companyName = companyupdateDto.getCompanyName();
		this.companyEmail = companyupdateDto.getCompanyEmail();
		this.companyTel = companyupdateDto.getCompanyTel();
		this.companyLocation = companyupdateDto.getCompanyLocation();
		this.companyUsername = companyupdateDto.getCompanyUsername();
		this.companyPassword = companyupdateDto.getCompanyPassword();
		this.jobId = companyupdateDto.getJobId();
	}
}
