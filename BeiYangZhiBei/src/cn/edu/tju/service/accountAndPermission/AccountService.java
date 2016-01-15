package cn.edu.tju.service.accountAndPermission;

import cn.edu.tju.domain.Account;

/**
 * 关于账户的service层（业务逻辑层）
 * @author Caowen
 *
 */
public interface AccountService {
	
	/**
	 * 根据用户名查询
	 * @param userName
	 * @return
	 */
	Account getAccountByUserName(String username);
	
	/**
	 * 验证用户名，密码
	 * @param userName
	 * @param pwd
	 * @return
	 */
	String getValidateResult(String username,String pwd);
	

	/**
	 * 新用户注册
	 * @param Album
	 * @return
	 */
	int saveSignUpAccount(Account account);

}
