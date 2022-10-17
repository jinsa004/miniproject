package site.metacoding.miniproject.domain.notice;

import java.util.List;

public interface NoticeDao {
	public List<Notice> findAll();

	public List<Notice> findByJobCodeToNotice(Integer jobCode);

	public Notice findById(Integer noticeId);

	public void insert(Notice notice);

	public void update(Notice notice);

	public void deleteById(Integer noticeId);

	public List<Notice> findByCompanyId(Integer companyId);

	public List<Notice> findSubsByEmployeeId(Integer employeeId);

	public Notice findByNoticeIdtoNoticeDetail(Integer noticeId);
}
