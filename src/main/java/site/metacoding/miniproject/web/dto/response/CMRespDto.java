package site.metacoding.miniproject.web.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class CMRespDto<T> { // 공통 응답 DTO
	private Integer code;
	private String msg;
	private T data;
}