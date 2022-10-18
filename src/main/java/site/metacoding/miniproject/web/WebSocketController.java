package site.metacoding.miniproject.web;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.web.dto.response.AlarmDto;

@RequiredArgsConstructor
@Controller
public class WebSocketController {

    private final SimpMessageSendingOperations messageSendingOperations;

    @MessageMapping("/alarm")
    public void test(AlarmDto alarmDto) throws Exception {
        System.out.println(alarmDto.getAlarmMessage());

        messageSendingOperations.convertAndSend("/sub/alarm/" + alarmDto.getReceiver(), alarmDto);
    }

    public boolean findByLoginUser(String receiver, String loginUser) {
        if (receiver.equals(loginUser)) {
            return true;
        }
        return false;
    }
}
