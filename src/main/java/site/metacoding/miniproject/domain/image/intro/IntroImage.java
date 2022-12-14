package site.metacoding.miniproject.domain.image.intro;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class IntroImage {
    private Integer introImageId;
    private Integer companyId;
    private String originImageName;
    private String newImageName;
    private String imagePath;
    private Timestamp createdAt;

    @Builder
    public IntroImage(Integer companyId, String originImageName, String newImageName, String imagePath) {
        this.companyId = companyId;
        this.originImageName = originImageName;
        this.newImageName = newImageName;
        this.imagePath = imagePath;
    }
}
