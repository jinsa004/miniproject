package site.metacoding.miniproject.web.dto.request.image;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class IntroImageDto {
    private String originImageName;
    private String newImageName;
    private String imagePath;

    @Builder
    public IntroImageDto(String originImageName, String newImageName, String imagePath) {
        this.originImageName = originImageName;
        this.newImageName = newImageName;
        this.imagePath = imagePath;
    }
}
