package site.metacoding.miniproject.domain.resume;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Resume {
    private Integer resumeId;
    private String resumeName;
    private Integer employeeId;
    private String resumeImage;
    private String highschoolName;
    private Integer highschoolStartdate;
    private Integer highschoolEnddate;
    private String highschoolMajor;
    private String univName;
    private Integer univStartdate;
    private Integer univEnddate;
    private String univMajor;
    private float univGrade;
    private String prevCo;
    private String careerPeriod;
    private String careerPosition;
    private String careerDepartment;
    private String careerTask;
    private Integer jobId;
    private boolean isMain;
    private Timestamp createdAt;
}