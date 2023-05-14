package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.Board;
import com.example.demo.mapper.BoardMapper;
import com.example.demo.service.BoardService;

@Controller
@RequestMapping("/")
public class JobInfo {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private BoardMapper mapper;
	
	@GetMapping({"/", "list"})
	public String list(Model model, 
			@RequestParam(value="page", defaultValue="1") Integer page,
			@RequestParam(value = "search", defaultValue = "") String search,
			@RequestParam(value = "type", required = false) String type) {
		
		Map<String, Object> result = service.listBoard(page, search, type);
		model.addAttribute("boardList", result);
		return "jobInfo";
	}
	
	
	@GetMapping("jobInfo1")
	public String method1() {
		return "jobInfo1";
	}

	
}
