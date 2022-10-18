package site.metacoding.miniproject.domain.notice;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.notice.NoticeUpdateDto;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Notice {
	private Integer noticeId;
	private Integer companyId;
	private String noticeTitle;
	private String noticeImage;
	private String noticePeriod;
	private String noticeDept;
	private String noticePosition;
	private String noticeTask;
	private String noticeSal;
	private String noticeQual;
	private String noticeCareer;
	private String noticeWellfare;
	private Integer jobId;
	private Timestamp createdAt;

	// 엔티티가 아닌 필드
	private Integer jobCode;
	private String jobName;
	private String introTitle;
	private String introBirth;
	private String introTask;
	private String introSal;
	private String introWellfare;
	private String introLocation;
	private String introImage;

	public void update(NoticeUpdateDto noticeUpdateDto) {
		this.noticeTitle = noticeUpdateDto.getNoticeTitle();
		this.noticeDept = noticeUpdateDto.getNoticeDept();
		this.noticePosition = noticeUpdateDto.getNoticePosition();
		this.noticeTask = noticeUpdateDto.getNoticeTask();
		this.noticeSal = noticeUpdateDto.getNoticeSal();
		this.noticeQual = noticeUpdateDto.getNoticeQual();
		this.noticeCareer = noticeUpdateDto.getNoticeCareer();
		this.noticeWellfare = noticeUpdateDto.getNoticeWellfare();
		this.jobId = noticeUpdateDto.getJobId();
	}
}
