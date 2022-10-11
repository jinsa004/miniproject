package site.metacoding.miniproject.domain.company;

import lombok.Getter;
import lombok.Setter;

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
}
