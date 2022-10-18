package site.metacoding.miniproject.web.dto.request.resume;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdateDto {
	private String resumeTitle;
	private String resumeImageId;
	private String highschoolName;
	private String highschoolStartdate;
	private String highschoolEnddate;
	private String highschoolMajor;
	private String univName;
	private String univStartdate;
	private String univEnddate;
	private String univMajor;
	private float univGrades;
	private String prevCo;
	private String careerPeriod;
	private String careerPosition;
	private String careerDepartment;
	private String careerTask;
	private Integer jobId;
}
