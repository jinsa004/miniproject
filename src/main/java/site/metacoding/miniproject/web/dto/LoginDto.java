package site.metacoding.miniproject.web.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class LoginDto {
    private String employeeUsername;
    private String employeePassword;
    private String companyUsername;
    private String companyPassword;
    private boolean remember;
}
