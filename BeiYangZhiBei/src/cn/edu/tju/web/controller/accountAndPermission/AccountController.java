package cn.edu.tju.web.controller.accountAndPermission;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import cn.edu.tju.domain.Account;
import cn.edu.tju.domain.SchoolCollegeMajor;
import cn.edu.tju.service.accountAndPermission.AccountService;
import cn.edu.tju.service.accountAndPermission.SchoolCollegeMajorService;
import cn.edu.tju.util.Escape;
import cn.edu.tju.util.EscapeUnescape;
import cn.edu.tju.util.Logger;

@Controller
public class AccountController {
	
	private static Logger logger = Logger.getLogger(AccountController.class);
	
	@Autowired AccountService accSrv;
	@Autowired SchoolCollegeMajorService scmSrv;
	
	/**
	 * 跳转至登录页面
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String toLogin(){
		logger.debug("进入登录页面");
		return "login";
	}

	/**
	 * 提交登录表单
	 * @param username
	 * @param password
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public Object login(
			@RequestParam("username") String username,
			@RequestParam("pwd") String pwd,
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		
		String message = accSrv.getValidateResult(username, pwd);
		logger.debug("到了验证用户名密码的方法");
		if(message.equals("1")){
			logger.debug("用户名密码正确");
			return new ModelAndView("redirect:/noteList.action");
			
		}else{
			model.addAttribute("msg", message);
			logger.debug("错误！");
			return "login";
		}
	}
	
	/**
	 * 跳转至注册页面
	 * @return
	 */
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String toSignUp(Model model){
		logger.debug("进入注册页面");
		List<SchoolCollegeMajor> schools = scmSrv.getAllSchools();
		model.addAttribute("schools", schools);
		return "signUp";
	}
	
	/**
	 * 提交注册页面，成功后转发之登录页
	 * @param username
	 * @param pwd
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/signUp",method=RequestMethod.POST)
	public ModelAndView signUp(
			@RequestParam("username") String username,
			@RequestParam("pwd") String pwd,
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		String realname=ServletRequestUtils.getStringParameter(request,"realname","");
		String email=ServletRequestUtils.getStringParameter(request,"email","");
		String tel=ServletRequestUtils.getStringParameter(request,"tel","");
		String stuId=ServletRequestUtils.getStringParameter(request,"stuId","");
		String grade=ServletRequestUtils.getStringParameter(request,"grade","");
		String schoolId = ServletRequestUtils.getStringParameter(request,"schoolId","");
		String collegeId = ServletRequestUtils.getStringParameter(request,"collegeId","");
		String majorId = ServletRequestUtils.getStringParameter(request,"majorId","");
		Account account = new Account();
		account.setUsername(username);
		account.setPwd(pwd);
		account.setRealname(realname);
		account.setEmail(email);
		account.setTel(tel);
		account.setSid(stuId);
		account.setGrade(Integer.parseInt(grade));
		account.setSchoolid(Integer.parseInt(schoolId));
		account.setCollegeid(Integer.parseInt(collegeId));
		account.setMajorid(Integer.parseInt(majorId));
		accSrv.saveSignUpAccount(account);
		return new ModelAndView("redirect:/login.action");
	}
	
	/**
	 * AJAX动态获取学院、专业的action
	 * 获取级联选项，例如根据学校ID获取其下所有的学院
	 * @param username
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getOptions",method=RequestMethod.GET)
	@ResponseBody
	public String getCascadedOptions(
			@RequestParam("optionId") String optionId,Model model){
		logger.debug("获取级联选项，例如根据学校ID获取其下所有的学院");
		System.out.println(optionId);
		int option = Integer.parseInt(optionId);
		//根据用户选择的级联ID
		List<SchoolCollegeMajor> optionsList = scmSrv.getByParent(option);
//		model.addAttribute("subOptions", optionsList);
		StringBuffer options = new StringBuffer();
		for(SchoolCollegeMajor scm : optionsList){
			options.append("<option value='"+scm.getId()+"'>"+scm.getName()+"</option>");
			logger.debug(scm.getName());
			System.out.println(scm.getName());
		}
		return EscapeUnescape.escape(options.toString());
	}
}
