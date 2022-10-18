package site.metacoding.miniproject.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import site.metacoding.miniproject.handler.ex.MyApiException;
import site.metacoding.miniproject.handler.ex.MyException;
import site.metacoding.miniproject.utill.Script;
import site.metacoding.miniproject.web.dto.response.CMRespDto;

@ControllerAdvice
public class MyExceptionHandler {

    @ExceptionHandler(MyApiException.class)
    public @ResponseBody CMRespDto<?> apiError(Exception e) {
        return new CMRespDto<>(-1, e.getMessage(), null);
    }

    @ExceptionHandler(MyException.class)
    public @ResponseBody String m1(Exception e) {
        return Script.back(e.getMessage());
    }
}
