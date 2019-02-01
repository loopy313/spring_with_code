package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController{
	private static final Logger logger=LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerGET(BoardVO board,Model model) throws Exception{
		logger.info("register get ................");
		return "/board/register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerPOST(BoardVO board,Model model,RedirectAttributes rttr) throws Exception{
		logger.info("regist post .............");
		logger.info(board.toString());
		
		service.create(board);
		//model.addAttribute("result","success");
		//리다이렉트 시에만 전송되는 속성.위와 달리 uri 상에서는 보이지 않는 숨겨진 데이터로 전송됨.
		rttr.addFlashAttribute("msg","success");
		return "redirect:/board/listAll";
	}
	
	@RequestMapping(value="/listAll",method=RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		model.addAttribute("list",service.listAll());
		return "board/listAll";
	}
}