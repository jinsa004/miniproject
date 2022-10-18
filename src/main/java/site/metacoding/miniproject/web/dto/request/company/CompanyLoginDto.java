package site.metacoding.miniproject.web.dto.request.company;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CompanyLoginDto {
    private String companyUsername;
    private String companyPassword;
    private boolean remember;
}
