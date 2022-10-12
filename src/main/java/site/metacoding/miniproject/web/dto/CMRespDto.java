package site.metacoding.miniproject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
@AllArgsConstructor
@Getter
public class CMRespDto<T> {
    private Integer code;
    private String msg;
    private T data;
}
