package com.oguogu.ogudoctor.self.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OguSelfController {
	//오구닥터 간단체크에서 증상을 선택하고 다음으로 버튼을 눌렀을때 다음페이지로 넘어가는 명령어(체크된값을 가지고 가야한다)
	@RequestMapping(value = "/ogudoctor_self_nextbutton.do", method = RequestMethod.POST)
    @ResponseBody
    public String handleAjaxRequest(@RequestBody Map<String, Object> requestBody) {
        List<String> selectedvalues = (List<String>) requestBody.get("selectedvalues");
        // 여기에서 선택된 값(selectedvalues)을 다음 페이지로 전달하거나 필요한 처리를 수행할 수 있습니다.
        return "success"; // 또는 다른 응답을 반환
    }
}
