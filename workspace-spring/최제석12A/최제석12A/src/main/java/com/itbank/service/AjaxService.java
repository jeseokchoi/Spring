package com.itbank.service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Scanner;

import org.springframework.stereotype.Service;

@Service
public class AjaxService {
	
	private final String serviceKey = "jGp9rOmm%2Bg6%2FZ8XO3NfViOUBt8Ng%2FfDXVkE7kple%2BKgtpugvK9mTKCmUIWI%2BsWPK%2Fa2a%2FI%2FHXOltgwoouyyiYA%3D%3D";
	private final String returnType = "json";
	private final String numOfRows = "100";
	private final String pageNo = "1";
	private final String itemCode = "PM10";
	private final String dataGubun = "DAILY";
	private final String searchCondition = "MONTH";

	public String getAirInfo() throws IOException {
		String url = "http://apis.data.go.kr/B552584/ArpltnStatsSvc/getCtprvnMesureLIst";
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("serviceKey", serviceKey);
		params.put("returnType", returnType);
		params.put("numOfRows", numOfRows);
		params.put("pageNo", pageNo);
		params.put("itemCode", itemCode);
		params.put("dataGubun", dataGubun);
		params.put("searchCondition", searchCondition);
		
		url += "?";
		for(String key : params.keySet()) {
				String value = params.get(key);
				url += key + "=" + value + "&";
		}
		
		URL requestURL = new URL(url);
		HttpURLConnection conn = (HttpURLConnection) requestURL.openConnection();
		conn.setRequestMethod("GET");
		
		String ret = "";
		if(conn.getResponseCode() == 200) {
			Scanner sc = new Scanner(conn.getInputStream());
			while(sc.hasNextLine()) {
				ret += sc.nextLine();
			}
			sc.close();
			conn.disconnect();
			return ret;
		}
		return null;
	}

}
