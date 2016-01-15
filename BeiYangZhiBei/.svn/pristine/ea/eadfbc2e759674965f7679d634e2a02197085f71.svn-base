/**
 * 
 */
package cn.edu.tju.util;

import java.text.MessageFormat;

import org.apache.log4j.Level;
import org.apache.log4j.spi.LoggingEvent;

/**
 * 封装Log组件，隐藏具体实现
 * @author xiongzq
 *
 */
public class Logger {

	private final org.apache.log4j.Logger logger;

	private Logger(Class<?> clazz) {
		logger = org.apache.log4j.Logger.getLogger(clazz);
	}

	private Logger() {
		logger = org.apache.log4j.Logger.getRootLogger();
	}

	public static Logger getLogger(Class<?> clazz) {
		return new Logger(clazz);
	}

	public static Logger getRootLogger() {
		return new Logger();
	}

	public void debug(Object message) {
		if (logger.isDebugEnabled()) {
			forcedLog(logger, Level.DEBUG, message);
		}
	}

	public void debug(Object message, Throwable t) {
		if (logger.isDebugEnabled()) {
			forcedLog(logger, Level.DEBUG, message, t);
		}
	}

	public void debug(String pattern, Object... arguments) {
		if (logger.isDebugEnabled()) {
			forcedLog(logger, Level.DEBUG, format(pattern, arguments));
		}
	}
	public void debug(String pattern, Throwable t, Object... arguments) {
		if (logger.isDebugEnabled()) {
			forcedLog(logger, Level.DEBUG, format(pattern, arguments), t);
		}
	}	

	public void assertLog(boolean assertion, String message) {
		if (!assertion) {
			forcedLog(logger, Level.ERROR, message);
		}
	}
	
	public void error(Object message){
		forcedLog(logger, Level.ERROR, message);
	}

	private static void forcedLog(org.apache.log4j.Logger logger, Level level, Object message) {
		logger.callAppenders(new LoggingEvent(FQCN, logger, level, message, null));
	}

	private static void forcedLog(org.apache.log4j.Logger logger, Level level, Object message, Throwable t) {
		logger.callAppenders(new LoggingEvent(FQCN, logger, level, message, t));
	}

	private static String format(String pattern, Object... arguments) {
		return MessageFormat.format(pattern, arguments);
	}

	private static final String FQCN;

	static {
		FQCN = Logger.class.getName();
	}

}
