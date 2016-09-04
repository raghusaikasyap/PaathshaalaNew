package com.school.utility;

import java.util.HashMap;
import java.util.Map;

public class ParameterParser {

	public static Map<String, String> getCreateSchoolParams(Map<String, String[]> paramMap)
	{
		HashMap<String, String> hMap = new HashMap<>();
		String schname = paramMap.get("schName")[0];
		hMap.put("school_name", schname);
		String schAddress = paramMap.get("schAddress")[0];
		hMap.put("school_address", schAddress);
		String schEmail = paramMap.get("schEmail")[0];
		hMap.put("school_email", schEmail);
		String schPhone = paramMap.get("schPhone")[0];
		hMap.put("school_phone", schPhone);

		return null;
		
	}
}
