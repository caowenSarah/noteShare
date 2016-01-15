/**
 * 
 */
package cn.edu.tju.util;

/**
 * @author xiongzq
 *
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	
	/**
	 * 默认的密码字符串组合，apache校验下载的文件的正确性用的就是默认的这个组合
	 */
	protected static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6',
			'7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	private static MessageDigest getNewMessageDigest(){
		try {
			MessageDigest messagedigest = MessageDigest.getInstance("MD5");
			return messagedigest;
		} catch (NoSuchAlgorithmException nsaex) {
			System.err.println(MD5Util.class.getName()
					+ "初始化失败，MessageDigest不支持MD5Util。");
			nsaex.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 用户测试较大文件生成MD5码
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {
		long begin = System.currentTimeMillis();

		File big = new File("G:/软考视频教程/软考视频教程.zip");

		String md5 = getFileMD5String(big);

		long end = System.currentTimeMillis();
		System.out.println("md5:" + md5 + " time:" + ((end - begin) / 1000)
				+ "s");
	}

	/**
	 * 适用于上G大的文件
	 * 
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public static String getFileMD5String(File file) throws IOException {
		
		FileInputStream in = new FileInputStream(file);
		
		return getFileMD5String(in);
	}

	/**
	 * 适用于上G大的文件
	 * 
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public static String getFileMD5String(InputStream file) throws IOException {
		MessageDigest tmpDigest = null;
		try {
			tmpDigest = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException nsaex) {
			System.err.println(MD5Util.class.getName()
					+ "初始化失败，MessageDigest不支持MD5Util。");
			nsaex.printStackTrace();
		}
		
		int bufferSize = 256 * 1024;
		DigestInputStream digestInputStream = null;
		digestInputStream = new DigestInputStream(file,tmpDigest);
		
		byte[] buffer =new byte[bufferSize];
		while(digestInputStream.read(buffer) > 0){
			
		}
		
		tmpDigest = digestInputStream.getMessageDigest();

		return bufferToHex(tmpDigest.digest());
	}
	
	public static String getMD5String(String s) {
		return getMD5String(s.getBytes());
	}

	public static String getMD5String(byte[] bytes) {
		MessageDigest tmp = getNewMessageDigest();
		tmp.update(bytes);
		return bufferToHex(tmp.digest());
	}

	private static String bufferToHex(byte bytes[]) {
		return bufferToHex(bytes, 0, bytes.length);
	}

	private static String bufferToHex(byte bytes[], int m, int n) {
		StringBuffer stringbuffer = new StringBuffer(2 * n);
		int k = m + n;
		for (int l = m; l < k; l++) {
			appendHexPair(bytes[l], stringbuffer);
		}
		return stringbuffer.toString();
	}

	private static void appendHexPair(byte bt, StringBuffer stringbuffer) {
		char c0 = hexDigits[(bt & 0xf0) >> 4];
		char c1 = hexDigits[bt & 0xf];
		stringbuffer.append(c0);
		stringbuffer.append(c1);
	}

	public static boolean checkPassword(String password, String md5PwdStr) {
		String s = getMD5String(password);
		return s.equals(md5PwdStr);
	}
}
