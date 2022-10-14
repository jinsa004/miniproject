$("#btn_insert_notice").click(()=>{
  btnInsertNotice()
});

function btnInsertNotice(){
    let data = {
      companyId : $("#companyId").val(),
      noticeTitle : $("#noticeTitle").val(),
      noticeConame : $("#noticeConame").val(),
      noticePeriod : $("#noticePeriod").val(),
      noticeDept : $("#noticeDept").val(),
      noticePosition : $("#noticePosition").val(),
      noticeTask : $("#noticeTask").val(),
      noticeSal : $("#noticeSal").val(),
      noticeQual : $('input[id=noticeQual]:checked').val(),
      noticeCareer : $("#noticeCareer").val(),
      noticeWellfare : $("#noticeWellfare").val(),
      jobId: $('input[id=jobId]:checked').val()
		};
    console.log(data);
	$.ajax("/co/noticeSave", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
            alert("공고등록에 성공하였습니다.");
			location.href="/co/mainCompany";
		} else {
            alert("공고등록에 실패하였습니다.");
		}
	});
}

{/* <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> */}

    // function sample6_execDaumPostcode() {
    //     new daum.Postcode({
    //         oncomplete: function(data) {
    //             var addr = ''; 
    //             var extraAddr = '';

    //             if (data.userSelectedType === 'R') {
    //                 addr = data.roadAddress;
    //             } else {
    //                 addr = data.jibunAddress;
    //             }

    //             if(data.userSelectedType === 'R'){
    //                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
    //                     extraAddr += data.bname;
    //                 }
    //                 if(data.buildingName !== '' && data.apartment === 'Y'){
    //                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
    //                 }
    //                 if(extraAddr !== ''){
    //                     extraAddr = ' (' + extraAddr + ')';
    //                 }
    //                 document.getElementById("sample6_extraAddress").value = extraAddr;
    //             } else {
    //                 document.getElementById("sample6_extraAddress").value = '';
    //             }

    //             document.getElementById('sample6_postcode').value = data.zonecode;
    //             document.getElementById("sample6_address").value = addr;
    //             document.getElementById("sample6_detailAddress").focus();
    //         }
    //     }).open();
    // }
