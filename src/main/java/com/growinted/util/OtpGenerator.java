package com.growinted.util;

public class OtpGenerator {
public static String generateOTP(int n)
{
	String alphaNumericString ="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

+ "0123456789"
+ "abcdefghijklmnopqrstuvwxyz";
	
StringBuilder sb=new StringBuilder(n);
for(int i=0;i<n;i++) {
	int index=(int)(alphaNumericString.length()* Math.random());
sb.append(alphaNumericString.charAt(index));	
}
return sb.toString();
}
}
