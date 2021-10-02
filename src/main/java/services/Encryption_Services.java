package services;

import org.apache.commons.codec.digest.DigestUtils;

public class Encryption_Services {
     public static String MD5Encryption(String str) {
    	 return DigestUtils.md5Hex(str);
     }
}
