package site.metacoding.miniproject.web.dto.request.resume;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdateDto {
	private String resumeName;
	private String resumeImage;
	private String highschoolName;
	private Integer highschoolStartdate;
	private Integer highschoolEnddate;
	private String highschoolMajor;
	private String univName;
	private Integer univStartdate;
	private Integer univEnddate;
	private String univMajor;
	private float univGrades;
	private String prevCo;
	private String careerPeriod;
	private String careerPosition;
	private String careerDepartment;
	private String careerTask;
	private Integer jobId;
}
