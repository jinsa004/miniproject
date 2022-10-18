package site.metacoding.miniproject.domain.image.resume;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResumeImage {
    private Integer resumeImageId;
    private String originImageName;
    private String newImageName;
    private String imagePath;
    private Timestamp createdAt;
}
