package site.metacoding.miniproject.domain.company;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.company.UpdateDto;

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

	private String introTitle;
	private String introBirth;
	private String introTask;
	private String introSal;
	private String introWellfare;
	private String introContent;
	private String introLocation;
	private String introImage;
	private String jobName;
	private Integer jobCode;

	public void Update(UpdateDto updateDto) {
		this.companyName = updateDto.getCompanyName();
		this.introTitle = updateDto.getIntroTitle();
		this.introBirth = updateDto.getIntroBirth();
		this.introTask = updateDto.getIntroTask();
		this.introSal = updateDto.getIntroSal();
		this.introWellfare = updateDto.getIntroWellfare();
		this.introContent = updateDto.getIntroContent();
		this.introLocation = updateDto.getIntroLocation();
		this.introImage = updateDto.getIntroImage();
		this.jobName = updateDto.getJobName();
		this.jobCode = updateDto.getJobCode();
	}
}
