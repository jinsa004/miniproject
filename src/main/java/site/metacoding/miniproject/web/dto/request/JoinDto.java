package site.metacoding.miniproject.web.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.domain.company.Company;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class JoinDto {
  private Integer companyId;
  private Integer companyNumber;
  private String companyName;
  private String companyEmail;
  private String companyTel;
  private String companyLocation;
  private String companyUsername;
  private String companyPassword;
  private Integer jobId;

  public Company toEntity(JoinDto joinDto) {
    Company company = new Company(joinDto);
    return company;
  }

}
