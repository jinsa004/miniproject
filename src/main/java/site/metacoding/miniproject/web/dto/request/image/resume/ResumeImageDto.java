package site.metacoding.miniproject.web.dto.request.image.resume;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
public class ResumeImageDto {
	private String originImageName;
	private String newImageName;
	private String imagePath;

	@Builder
	public ResumeImageDto(String originImageName, String newImageName, String imagePath) {
		this.originImageName = originImageName;
		this.newImageName = newImageName;
		this.imagePath = imagePath;
	}
}
