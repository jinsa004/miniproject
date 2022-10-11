package site.metacoding.miniproject.domain.intro;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Intro {
	private Integer introId;
	private Integer companyId;
	private String introTitle;
	private String introBirth;
	private String introTask;
	private String introSal;
	private String introWellfare;
	private String introContent;
	private String introLocation;
	private String introImage;
	private Integer jobId;
}
