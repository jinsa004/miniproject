package site.metacoding.miniproject.web.dto.request.intro;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class UpdateDto {
    private String companyName;
    private String introTitle;
    private String introBirth;
    private String introTask;
    private String introSal;
    private String introWellfare;
    private String introContent;
    private String introLocation;
    private String introImageId;
    private String jobName;
}
