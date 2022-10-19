package site.metacoding.miniproject.domain.intro;

import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.intro.UpdateDto;

@NoArgsConstructor
@Getter
@Setter
public class Intro {
	private Integer introId;
	private Integer companyId;
	@NotBlank
	private String introTitle;
	private String introBirth;
	@NotBlank
	private String introTask;
	private String introSal;
	private String introWellfare;
	private String introContent;
	private String introLocation;
	private String introImageId;
	private Integer jobId;

	// 엔티티가 아닌 필드
	private Integer no;
	private String companyName;
	private String jobName;

	public void Update(UpdateDto updateDto) {
		this.companyName = updateDto.getCompanyName();
		this.introTitle = updateDto.getIntroTitle();
		this.introBirth = updateDto.getIntroBirth();
		this.introTask = updateDto.getIntroTask();
		this.introSal = updateDto.getIntroSal();
		this.introWellfare = updateDto.getIntroWellfare();
		this.introContent = updateDto.getIntroContent();
		this.introLocation = updateDto.getIntroLocation();
		this.introImageId = updateDto.getIntroImageId();
		this.jobName = updateDto.getJobName();
	}
}