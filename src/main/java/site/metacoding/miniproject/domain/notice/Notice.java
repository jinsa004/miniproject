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
	private String noticeConame;
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
	// //Junit 테스트를 위한 임시코드
	// public Notice(String noticeTitle, String noticeWellfare, Integer companyId) {
	// this.companyId = companyId;
	// this.noticeTitle = noticeTitle;
	// this.noticeWellfare = noticeWellfare;
	// }

	public void update(NoticeUpdateDto noticeUpdateDto) {
		this.noticePeriod = noticeUpdateDto.getNoticeTitle();
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
