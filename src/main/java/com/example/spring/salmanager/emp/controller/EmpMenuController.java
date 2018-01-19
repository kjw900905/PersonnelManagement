package com.example.spring.salmanager.emp.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring.salmanager.Board_Member;
import com.example.spring.salmanager.emp.service.EmpMenuService;

//직원급여정보
@Controller
public class EmpMenuController {

	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(EmpMenuController.class);

	@Autowired
	private EmpMenuService empMenuService;
	private String PRE_VIEW_PATH = "/SalManager/emp/";

	@RequestMapping(value = "/emp_main.do")  					//메인화면
	public ModelAndView goEmpMenu(HttpServletRequest request) {

		HashMap<String, String> map = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
	
		mv.addObject("listNew", empMenuService.newEmpList(map));
		mv.addObject("countnew",empMenuService.newEmpList(map).size());
		
		mv.addObject("listExi", empMenuService.exiEmpList(map));
		mv.addObject("countexi",empMenuService.exiEmpList(map).size());
		
		mv.setViewName(PRE_VIEW_PATH + "emp_main");
		return mv;

	}

	// +++++++++++++++++++++++++checkbox선택된것만이 jsp 에 보여지게
	// 하기++++++++++++++++++++++++++++++++++++++++++++++++++++
	@RequestMapping(value = "/new_empcode.do", method = RequestMethod.GET)	//emp_main -> emp_newsali(체크한 신규계산 인원을 나타내주는 폼)
	public ModelAndView new_emp(@RequestParam HashMap<String, Object> params, Model model) throws Exception {

		ModelAndView mv = new ModelAndView();
		//System.out.println("map : "+params);
		
		mv.addObject("list", empMenuService.checkbox_Choice(params));
		mv.addObject("count",empMenuService.checkbox_Choice(params).size());
		
		mv.setViewName(PRE_VIEW_PATH + "emp_newsali");
		return mv;

	}
	
	@RequestMapping(value = "/exi_empcode.do", method = RequestMethod.GET)//emp_main -> emp_exisali(체크한 기존계산 인원을 나타내는폼)
	public ModelAndView exi_emp(@RequestParam HashMap<String, String> params, Model model) throws Exception {

		HashMap<String, String> map = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
		System.out.println("map : "+params);
		
		
		mv.addObject("list",empMenuService.exi_checkbox_Choice(params));
		mv.addObject("count",empMenuService.exi_checkbox_Choice(params).size());
		
		mv.setViewName(PRE_VIEW_PATH + "emp_exisali");
		return mv;

	}
	
	@RequestMapping(value = "insert_sal_empcode.do",method = RequestMethod.POST)  //신규계산 insert (post)방식
	public ModelAndView i_sal_emp(@RequestParam HashMap<String, String> map) {
		ModelAndView mv = new ModelAndView();
		
		empMenuService.insert_newEmp_code(map);
		
		//System.out.println("insertsal map: "+map);
		mv.addObject("listNew", empMenuService.newEmpList(map));
		mv.addObject("count",empMenuService.newEmpList(map).size());
		mv.addObject("listExi", empMenuService.exiEmpList(map));
		
		mv.setViewName(PRE_VIEW_PATH + "emp_main");
		//empMenuService.insert_newEmp_code(map);
		return mv;
	}
	



	/*
	 * @RequestMapping(value="1checkbox_Choice.do", method=RequestMethod.GET) public
	 * String checkboxTest(
	 * 
	 * @RequestParam MultiValueMap<String, Object> params, Model model) throws
	 * Exception{
	 * 
	 * HashMap<String , String> map = new HashMap<String , String>(); ModelAndView
	 * mv = new ModelAndView();
	 * 
	 * logger.info("몇개를 선택했는지 : " + params.get("chk").size());
	 * logger.info("무엇을 선택했는지 : " + params.get("chk").toString() );
	 * 
	 * for(int i=0; i<params.get("chk").size(); i++ ){ map.put(String.valueOf(i),
	 * params.get("chk").toString());//db 에 값을 뿌려주는거 }
	 * 
	 * 
	 * model.addAttribute("checkbox",boardService.checkbox_Choice(map));//이걸로 db에 있는
	 * 값을 가지고 왔어. model.addAttribute("params",params);
	 * 
	 * return "board/checkbox_Delivery";
	 * 
	 * 
	 * }
	 */
	// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	

}
