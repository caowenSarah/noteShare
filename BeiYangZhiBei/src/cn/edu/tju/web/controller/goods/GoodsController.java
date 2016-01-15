package cn.edu.tju.web.controller.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import cn.edu.tju.domain.Goods;
import cn.edu.tju.domain.Note;
import cn.edu.tju.service.goods.GoodsService;
import cn.edu.tju.util.Pager;
import cn.edu.tju.web.DTO.GoodsDTO;
import cn.edu.tju.web.DTO.NoteDTO;
import cn.edu.tju.web.DTO.converter.GoodsConverter;
import cn.edu.tju.web.DTO.converter.NoteConverter;



@Controller
public class GoodsController {
	
	@Autowired
	GoodsService goodsSrv;
	
	/**
	 * 进入笔记详情页面
	 * @return
	 */
	@RequestMapping(value="/goodsDetail",method=RequestMethod.GET)
	public String noteDetail(
			@RequestParam("id") int goodsId,
			HttpServletRequest request,
			HttpServletResponse response,Model model){
		System.out.println("进入商品详情页面");
		Goods goods = goodsSrv.getGoodsById(goodsId);
		GoodsDTO dto = GoodsConverter.domainToDTO(goods);
		model.addAttribute("note", dto);
		return "goods/goodsDetail";
	}
	
	//noteDetail.action?id=${note.id
	@RequestMapping(value="/goodsList",method=RequestMethod.GET)
	public String noteList(HttpServletRequest request,
			HttpServletResponse response,Model model){
		System.out.println("进入笔记列表页面");
		
		//接收前台的参数“科目”，若前台未传此参数，则给此处的subjects变量赋值为空字符串
		String subjects=ServletRequestUtils.getStringParameter(request,"type","");

		Pager<Goods> pageInfo = new Pager<Goods>();
		Map<String,Object> conditions = new HashMap<String,Object>();
		goodsSrv.getGoodssByPage(pageInfo, conditions);
		List<Goods> goods = pageInfo.getResults();
		List<GoodsDTO> goodsDTOList = new ArrayList<GoodsDTO>();
		//把notelist转换成DTOlist，javabean的转换
		for(Goods good : goods){
			GoodsDTO dto = GoodsConverter.domainToDTO(good);
			goodsDTOList.add(dto);
		}
		//将noteList作为一个属性，绑到model，传到前台
		model.addAttribute("goodsList", goodsDTOList);
		return "goods/goodsList";
	}
	
	/**
	 * 进入新建商品页面（get）
	 * @return
	 */
	@RequestMapping(value="/createGoods",method=RequestMethod.GET)
	public String toCreateGoods(){
		System.out.println("进入新建商品页面");
		return "goods/createGoods";
	}
	/**
	 * 提交新建商品（post）
	 * @return
	 */
	@RequestMapping(value="/createGoods",method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView createGoods(
			@RequestParam("goodsname") String goodsname,
			@RequestParam("type") String type,
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		System.out.println("添加商品页面");
		Goods goods = new Goods();
		goods.setName(goodsname);
		goods.setType(type);
		int id=goodsSrv.saveGoods(goods);
		return new ModelAndView("redirect:/goodsList.action");
	}


}
