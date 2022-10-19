package site.metacoding.miniproject.domain.image.resume;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class ResumeImage {
    private Integer resumeImageId;
    private String originImageName;
    private String newImageName;
    private String imagePath;
    private Timestamp createdAt;

    @Builder
    public ResumeImage(String originImageName, String newImageName, String imagePath) {
        this.originImageName = originImageName;
        this.newImageName = newImageName;
        this.imagePath = imagePath;
    }
}
