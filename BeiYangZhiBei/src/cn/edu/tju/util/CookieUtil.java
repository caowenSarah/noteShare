/**
 * 
 */
package cn.edu.tju.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 封装对Cookie的操作
 * @author xiongzq
 *
 */
public class CookieUtil {

 /**
  * @param request
  * @param name 传入cookie的key
  * @return
  */
  public static Cookie getCookie(HttpServletRequest request, String name) {
    Cookie cookies[] = request.getCookies();
    if (cookies == null || name == null || name.length() == 0) {
      return null;
    }
    for (int i = 0; i < cookies.length; i++) {
      if (name.equals(cookies[i].getName())) {
        return cookies[i];
      }
    }
    return null;
  }

  public static void deleteCookie(HttpServletRequest request,
      HttpServletResponse response, Cookie cookie) {
    if (cookie != null) {
      cookie.setPath(getPath(request));
      cookie.setValue("");
      cookie.setMaxAge(0);
      response.addCookie(cookie);
    }
  }

  public static void setCookie(HttpServletRequest request,
      HttpServletResponse response, String name, String value) {
	  setCookieNoAge(request, response, name, value);
  }

  public static void setCookie(HttpServletRequest request,
      HttpServletResponse response, String name, String value, int maxAge) {
    Cookie cookie = new Cookie(name, value == null ? "" : value);
    cookie.setMaxAge(maxAge);
    cookie.setPath(getPath(request));
    response.addCookie(cookie);
  }
  
/**
 * 建立生命周期与浏览器生命周期相同的Cookie
 * @param request
 * @param response
 * @param name
 * @param value
 */
public static void setCookieNoAge(HttpServletRequest request,
	      HttpServletResponse response, String name, String value) {
	    Cookie cookie = new Cookie(name, value == null ? "" : value);
	    cookie.setPath(getPath(request));
	    response.addCookie(cookie);
	  }

  private static String getPath(HttpServletRequest request) {
    String path = request.getContextPath();
//    return (path == null || path.length()==0) ? "/" : path;
    return "/";
  }

}