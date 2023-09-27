/*
 * package com.oguogu.pocket.controller;
 * 
 * import java.io.BufferedReader; import java.io.IOException; import
 * java.io.InputStreamReader; import java.net.URL; import
 * java.net.URLConnection; import java.util.ArrayList; import java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.json.simple.JSONArray; import org.json.simple.JSONObject; import
 * org.json.simple.parser.JSONParser; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.bind.annotation.ResponseBody; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.google.gson.JsonArray; import com.google.gson.JsonElement; import
 * com.oguogu.pocket.model.vo.Pocketplace_VO;
 * 
 * @Controller public class PocketController_safe { // 포켓 메인 화면에서 '나의 포켓 만들기'버튼을
 * 누르면 포켓만들기 폼으로 이동
 * 
 * @GetMapping("/gopocketform.do") public ModelAndView getGoPocketForm() {
 * return new ModelAndView("pocket/pocketform"); }
 * 
 * // 포켓 만들기 폼에서 장소 추가하기 버튼을 누르면 장소를 검색해서 선택할 수 있는 pocketform_search페이지로 들어간다.
 * 
 * @RequestMapping("/pocketform_search_go.do") public ModelAndView
 * getPocketFormSearchGo() { ModelAndView mv = new
 * ModelAndView("pocket/pocketform_search"); StringBuffer sb = new
 * StringBuffer(); BufferedReader br = null; String key =
 * "FWahqHQzbVw450Hz8s1fOKiWczaXls%2BsNXfGx8A0I9Py%2BUJ4UdvepSlBgGjS47VzL2qb59UWoHwBXmxLlNmCLQ%3D%3D";
 * 
 * try { URL url = new URL(
 * "https://api.odcloud.kr/api/15111389/v1/uddi:41944402-8249-4e45-9e9d-a52d0a7db1cc?page=1&perPage=1000&returnType=JSON&serviceKey="
 * + key); URLConnection conn = url.openConnection(); br = new
 * BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
 * 
 * String msg = ""; while ((msg = br.readLine()) != null) { sb.append(msg); }
 * 
 * JSONParser jsonParser = new JSONParser(); JSONObject jObject = (JSONObject)
 * jsonParser.parse(sb.toString()); JSONArray dataObject = (JSONArray)
 * jObject.get("data");
 * 
 * List<Pocketplace_VO> pocketlist = new ArrayList<Pocketplace_VO>();
 * 
 * for (int i = 0; i < dataObject.size(); i++) { JSONObject jobt =
 * (JSONObject)dataObject.get(i); String roadaddr = (String) jobt.get("도로명 이름");
 * String locationex = (String) jobt.get("기본 정보_장소설명"); String facilities =
 * (String) jobt.get("시설명"); double lon = Double.parseDouble((String)
 * jobt.get("경도")); double lat = Double.parseDouble((String) jobt.get("위도"));
 * 
 * Pocketplace_VO ppvo = new Pocketplace_VO(roadaddr, locationex, facilities,
 * lon, lat); pocketlist.add(ppvo); }
 * 
 * mv.addObject("pocketlist",pocketlist);
 * 
 * return mv; } catch (Exception e) { System.out.println(e); } return null; }
 * 
 * // pocketform_search페이지에서 검색어를 입력하고 검색 버튼을 누르면 검색어가.
 * 
 * // 포켓 만들기 폼에서 저장버튼을 누르면 모두의 포켓 DB로 데이터들이 저장된다.
 * 
 * // 포켓 만들기 폼에서 취소버튼을 누르면 다시 메인화면으로 돌아간다.
 * 
 * }
 */