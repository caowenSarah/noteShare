package cn.edu.tju.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
/**
 * 
 * @author zhangzhengji
 *
 */
public class JsonUtil {
	
	/**
	 * Json格式的字符串向JavaBean转换，传入空串将返回null
	 * @param strBody Json格式的字符串
	 * @param c 目标JavaBean类型
	 * @return JavaBean对象
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	public static <T>T json2Object(String strBody,Class<T> c) throws JsonParseException, JsonMappingException, IOException{
		if(strBody==null || "".equals(strBody)){
			return null;
		}else{
			strBody = EscapeCompatible(strBody);
			ObjectMapper mp = new ObjectMapper();
			T t = (T)mp.readValue(strBody,c);
			return t;
		}
	}

	/**
	 * Json格式的字符串向JavaBean List集合转换，传入空串将返回null
	 * @param <T>
	 * @param <T>
	 * @param <T>
	 * @param strBody
	 * @param c
	 * @return 
	 * @return
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	public static <T> List<T> json2ObjectList(String strBody,Class<T> c) throws JsonParseException, JsonMappingException, IOException{
		if(strBody==null || "".equals(strBody)){
			return null;
		}else{
			strBody = EscapeCompatible(strBody);
			ObjectMapper mp = new ObjectMapper();
			JavaType javaType = mp.getTypeFactory().constructParametricType(ArrayList.class, c);
			List<T> lst =  (List<T>)mp.readValue(strBody, javaType); 
			return lst;
		}
	}
	
	/**
	 * Json格式的字符串向List<String>集合转换，传入空串将返回null
	 * @param strBody
	 * @return
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	public static List<String> json2List(String strBody) throws JsonParseException, JsonMappingException, IOException{
		if(strBody==null || "".equals(strBody)){
			return null;
		}else{
			strBody = EscapeCompatible(strBody);
			ObjectMapper mp = new ObjectMapper();
			List<String> t = (List<String>)mp.readValue(strBody, List.class);
			return t;
		}
	}
	
	
	/**
	 * 转义兼容方法，若URL中的反斜杠是单杠，则增加一个反斜杠用以转义
	 * @param strBody
	 * @return
	 */
	private static String EscapeCompatible(String strBody) {
		int s  = strBody.indexOf("\\");//第一个反斜杠的位置
		char a = strBody.charAt(s+1);//第一个反斜杠后边的那个字符
		/*
		 * 如果解析后的url中的反斜杠是单杠，则转义
		 */
		if(!String.valueOf(a).equals("\\")){
			strBody = strBody.replace("\\", "\\\\");
		}
		return strBody;
	}

	
	/**
	 * Object转为Json格式字符串的方法
	 * @param o
	 * @return
	 * @throws JsonProcessingException
	 */
	public static String object2Json(Object o) throws JsonProcessingException{
		ObjectMapper mp = new ObjectMapper();
		return mp.writeValueAsString(o);
	}
	
	
	
	/*
	 * 测试代码
	 */
	public static void main(String[] args){
//		testJson2ObjectList();//测试Json2ObjectList
		
//		String json = "{\"bookId\":\"29\",\"printBillBook\":{\"bindingType\":\"%u65E0%u7EBF%u80F6%u88C5\",\"productUnit\":\"%u518C\",\"numPerUnit\":\"5\",\"contentPageAmount\":\"10\",\"spineThickness\":\"11\",\"packUnit\":\"%u7BB1\"},\"printBillCoverCraft\":{\"coverFilm\":\"%u5355%u9762%u5149%u819C\"},\"printBillMaterials\":[{\"project\":\"%u6B63%u6587\",\"printMethod\":\"%u80F6%u5E73\",\"colorAmount\":\"2\",\"totalPages\":\"2\",\"formatNum\":\"8\",\"paperSpec\":\"889*1194\",\"paperType\":\"%u94DC%u7248%u7EB8\",\"paperWeight\":\"100g\",\"paperSource\":\"%u5382%u8D2D%u7EB8\"},{\"project\":\"%u63D2%u56FE\",\"printMethod\":\"%u80F6%u5E73\",\"colorAmount\":\"8\",\"totalPages\":\"8\",\"formatNum\":\"8\",\"paperSpec\":\"889*1194\",\"paperType\":\"%u94DC%u7248%u7EB8\",\"paperWeight\":\"100g\",\"paperSource\":\"%u5382%u8D2D%u7EB8\"}],\"printBillBindingOrders\":[{\"bindingName\":\"terte\",\"belongPart\":\"%u5C01%u9762\",\"codeAmount\":\"11\",\"startPage\":\"1\"}],\"printBillCoverBinding\":\"fwqefqw\",\"printBillRemark\":\"qwerwqer\"}";
//		PrintBillJson p = null;
//		PrintBillBindingOrder oo = new PrintBillBindingOrder();
//		List<String> l = new ArrayList<String>();
//		l.add("马云");
//		l.add("孙正义");
//		l.add("Bill");
//		List<String> list ;
//		try {
////			String ss = object2Json(oo);
//			//p = json2Object(json,PrintBillJson.class);
////			String ls = object2Json(l);
//			list = json2List(null);
////			System.out.println(ls);
//			System.out.println(list);
//		} catch (JsonParseException e) {
//			e.printStackTrace();
//		} catch (JsonMappingException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
	}

//	private static void testJson2ObjectList() {
//		String pm = "[{\"id\":0,\"printBillId\":null,\"project\":\"封面\",\"colorAmount\":null,\"totalPages\":null,\"formatNum\":null,\"printMethod\":null,\"paperType\":\"双面铜版纸\",\"paperWeight\":\"100g\",\"paperSpec\":null,\"paperSource\":null,\"paperAmount\":null,\"spareRate\":null,\"spareAmount\":null}]";
//		String om = "[{\"id\":0,\"orderId\":null,\"project\":\"封面\",\"colorAmount\":null,\"pages\":null,\"formatNum\":null,\"printMethod\":\"胶平\",\"paperType\":\"铜版纸\",\"paperWeight\":\"100g\",\"paperSpec\":\"889*1194\",\"paperSource\":null,\"paperAmount\":\"\",\"spareRate\":\"\",\"spareAmount\":\"\"},{\"id\":0,\"orderId\":null,\"project\":\"正文\",\"colorAmount\":null,\"pages\":null,\"formatNum\":null,\"printMethod\":\"胶平\",\"paperType\":\"双胶\",\"paperWeight\":\"70g\",\"paperSpec\":\"889*1194\",\"paperSource\":null,\"paperAmount\":\"\",\"spareRate\":\"\",\"spareAmount\":\"\"}]";
//		try {
//			List<PrintBillMaterial> pbms = json2ObjectList(pm, PrintBillMaterial.class);
//			pbms.toString();
//			List<OrderMaterialJson> omjs = json2ObjectList(om, OrderMaterialJson.class);
//		} catch (JsonParseException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		} catch (JsonMappingException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		} catch (IOException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//	}
}
