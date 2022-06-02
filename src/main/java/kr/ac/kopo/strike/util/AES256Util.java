package kr.ac.kopo.strike.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.util.Base64;

@Component
public class AES256Util {
	private static final String ALGORITHM = "AES/CBC/PKCS5Padding";
	private static byte[] KEY = "C*F)J@NcRfUjXn2r5u8x/A?D(G+KaPdS".getBytes();
	private static byte[] IV = "0000000000000000".getBytes();

	/**
	 * AES ?��방향 ?��?��?�� ?��?�� 메소?��
	 * @param plainText ?���? (?���? �?)
	 * @return ?��?��?��?�� 결과�? (base64 ?��코딩?��)
	 */
	public static String encrypt(String plainText) {
		if (plainText == null || plainText == "") {
			return plainText;
		}
		Key key = new SecretKeySpec(KEY, "AES");
		try {
			Cipher cipher = Cipher.getInstance(ALGORITHM);
			cipher.init(Cipher.ENCRYPT_MODE, key, new IvParameterSpec(IV));
			return new String(Base64.getEncoder().encode(cipher.doFinal(plainText.getBytes())));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * AES ?��방향 ?��?��?���? ?��?�� 메소?��
	 * @param encryptedText ?��?��?��?�� 문자?��
	 * @return ?���?
	 */
	public static String decrypt(String encryptedText) {
		if (encryptedText == null || encryptedText == "") {
			return encryptedText;
		}
		Key key = new SecretKeySpec(KEY, "AES");
		try {
			Cipher cipher = Cipher.getInstance(ALGORITHM);
			cipher.init(Cipher.DECRYPT_MODE, key, new IvParameterSpec(IV));
			return new String(cipher.doFinal(Base64.getDecoder().decode(encryptedText)));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
