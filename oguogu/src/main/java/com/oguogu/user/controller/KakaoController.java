package com.oguogu.user.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class KakaoController {

	@Autowired
	private Join_Service join_Service;
	// 인증코드를 받기 위해서 redirect_uri를 사용

	@RequestMapping("/kakaologin.do")
	public ModelAndView KakaoLogin(String code, HttpSession session) {
		ModelAndView mv = new ModelAndView("index");

		// 2. 토큰 받기
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청에 필요
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// 요청 헤더 부분
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

			// 본문에 필요한 요구사항 4개
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuffer sb = new StringBuffer();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=64e389d2d688211ab0016951d3cc766d");
			sb.append("&redirect_uri=https://nohsam.shop/kakaologin.do");
			sb.append("&code=" + code);
			bw.write(sb.toString());
			bw.flush();

			// 성공하면 200
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			if (responseCode == 200) {// 200 == HttpURLConnection.HTTP_OK
				// 요청을 통해 받은 JSON 타입의 결과 메세지를 읽어온다.
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				StringBuffer result = new StringBuffer();
				String line = null;
				while ((line = br.readLine()) != null) {
					result.append(line);
				}

				// JSON 파싱 처리 "access_token"과 "refresh_token"을 잡아내어
				// 카카오 API 요청을 한 후
				JSONParser pars = new JSONParser();
				// Object obj = pars.parse(result.toString());
				JSONObject json = (JSONObject) pars.parse(result.toString());

				String access_token = (String) json.get("access_token");
				String refresh_token = (String) json.get("refresh_token");


				String apiURL = "https://kapi.kakao.com/v2/user/me";

				String header = "Bearer " + access_token;

				URL url2 = new URL(apiURL);
				HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
				// POST 방식
				conn2.setRequestMethod("POST");
				conn2.setDoOutput(true);

				// 헤더 요청 사항
				conn2.setRequestProperty("Authorization", header);

				int res_code = conn2.getResponseCode();
				// HttpURLConnection.HTTP_OK => 성공시 200
				if (res_code == HttpURLConnection.HTTP_OK) {
					// 카카오 서버쪽에서 사용자의 정보를 보내다.
					// 이것을 읽어와서 필요한 정보들을 선별해야 한다.
					BufferedReader brdm = new BufferedReader(new InputStreamReader(conn2.getInputStream()));

					String str = null;
					StringBuffer res = new StringBuffer();
					while ((str = brdm.readLine()) != null) {
						res.append(str);
					}

					json = (JSONObject) pars.parse(res.toString());

					JSONObject props = (JSONObject) json.get("properties");
					String nickName = (String) props.get("nickname");
					// String profile_image = (String)props.get("profile_image");

					JSONObject kakao_account = (JSONObject) json.get("kakao_account");
					String email = (String) kakao_account.get("email");
					
					//카카오에서 받은 정보 저장
					User_VO userVO = new User_VO();
					userVO.setUser_id(email);
					userVO.setEmail(email);
					userVO.setNickname(nickName);
					userVO.setType("2");
					
					//카카오에서 받은 정보를 바탕으로 새로운 객체를 만들어서 selectone으로 찾아온다.
					User_VO userVO2 = new User_VO();
					userVO2 = join_Service.getUserOneList(userVO.getUser_id());
					
					//db에 가서 찾았는데 없으면 카카오에서 받은 정보(userVO)로 회원가입하고

					if (userVO2 == null) {
						int result1 = join_Service.getUserAdd(userVO);
						if (result1 > 0) {
							// 사용자가 성공적으로 추가되었을 때만 세션에 저장
							session.setAttribute("loginChk", "ok");
							session.setAttribute("user_id", userVO.getUser_id());
							session.setAttribute("email", userVO.getEmail());
							session.setAttribute("nickname", userVO.getNickname());
							
						}
					// 있으면 새로운 객체로 로그인 한다.
					} else {
						if(userVO2.getStatus().equals("1")) {
							session.setAttribute("loginChk", "nonono");
							// 로그인실패한걸 세션에 줄 필요 없겟지
							mv.setViewName("redirect:/");
							return mv;
						}
						session.setAttribute("loginChk", "ok");
						session.setAttribute("user_id", userVO2.getUser_id());
						session.setAttribute("email", userVO2.getEmail());
						session.setAttribute("nickname", userVO2.getNickname());
					}
					
					
				}
			}
			
			mv.setViewName("redirect:/");
			return mv;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
