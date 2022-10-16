package site.metacoding.miniproject.domain.image.intro;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IntroImage {
    private Integer introImageId;
    private String originImageName;
    private String newImageName;
    private String imagePath;
    private Timestamp createdAt;
}
