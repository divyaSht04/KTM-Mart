package model;

import java.security.spec.KeySpec;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class PasswordEncryptionDecryption {
	
    private static final String ALGORITHM = "AES";
    private static final int KEY_SIZE = 128;
    private static final String SALT = "a_random_salt"; // Use a more secure random salt in production
    private static final int ITERATION_COUNT = 65536;

	public static SecretKeySpec getKeyFromUserId(String userId) throws Exception {
        byte[] saltBytes = SALT.getBytes();
        KeySpec spec = new PBEKeySpec(userId.toCharArray(), saltBytes, ITERATION_COUNT, KEY_SIZE);
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        byte[] keyBytes = factory.generateSecret(spec).getEncoded();
        return new SecretKeySpec(keyBytes, ALGORITHM);
    }

    // Encrypt the password
    public static String encrypt(String password, String userId) throws Exception {
        SecretKeySpec key = getKeyFromUserId(userId);
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, key);
        byte[] encryptedBytes = cipher.doFinal(password.getBytes());
        return Base64.getEncoder().encodeToString(encryptedBytes);
    }

    // Decrypt the password
    public static String decrypt(String encryptedPassword, String userId) throws Exception {
        SecretKeySpec key = getKeyFromUserId(userId);
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(encryptedPassword));
        return new String(decryptedBytes);
    }
}