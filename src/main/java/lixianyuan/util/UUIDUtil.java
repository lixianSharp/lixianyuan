package lixianyuan.util;

import java.util.UUID;

public class UUIDUtil {
	
	/**
	 * 返回uuid，长度为36
	 * @return  字符串类型的UUID
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString();
	}
}
