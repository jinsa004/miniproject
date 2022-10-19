//header
let receiver = $(".checkprinciple").val();
let stomp = "";

window.onload = function () {
    if (receiver != null) {
        let socket = new SockJS("/websocket");
        stomp = Stomp.over(socket);
        stomp.connect({}, function () {
            stomp.subscribe("/sub/alarm/" + receiver, function (result) {
                let alarmResult = JSON.parse(result.body);
                console.log(alarmResult.sender);
                if(alarmResult.alarmMessage == "컨택"){
                    $("#notification_emp").append("<tr><td>" + alarmResult.sender + " 기업이 " + alarmResult.receiver + " 님을 " + alarmResult.alarmMessage + "했습니다.</td></tr>");
                } else if(alarmResult.alarmMessage == "구독"){
                    $("#notification_co").append("<tr><td>" + alarmResult.sender + " 님이 " + alarmResult.receiver + " 기업을 " + alarmResult.alarmMessage + "했습니다.</td></tr>");
                }
            });
        });
    }
}

// function findMessage(message) {
//     let sender = message.sender;
//     let alarmMessage = message.alarmMessage;


//     let resultMessage = sender + "님이" + alarmMessage + "하였습니다";
//     console.log(resultMessage);
//     return resultMessage
// }

//intro detail
function subscribe() {
    let receiver = $("#receiver").val();
    let sender = $("#sender").val();
    let data = {
        "receiver": receiver,
        "alarmMessage": "구독",
        "sender": sender,
    };
    console.log(sender);

    let subdata = sender + "님이 " + receiver + "을 구독 했습니다";
    console.log(subdata);

    stomp.send("/pub/alarm", {}, JSON.stringify(data));
}

//resume detail
function contact() {
    let receiver = $("#receiver").val();
    let sender = $("#sender").val();
    let data = {
        "receiver": receiver,
        "alarmMessage": "컨택",
        "sender": sender,
    };
    console.log(sender);

    // let contact_data = sender + "기업이 " + receiver + "님께 컨택했습니다.";
    // console.log(contact_data);

    stomp.send("/pub/alarm", {}, JSON.stringify(data));

}
