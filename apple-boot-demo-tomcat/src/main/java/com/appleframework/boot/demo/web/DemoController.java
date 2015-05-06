package com.appleframework.boot.demo.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.appleframework.boot.demo.model.Demo;
import com.appleframework.web.springmvc.controller.BaseController;

@Controller
@RequestMapping("/demo")
public class DemoController extends BaseController {

	private String viewModel = "demo/";

	@RequestMapping(value = "/list")
	public String list(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		
		List<Demo> list = new ArrayList<Demo>();
		for (int i = 1; i <= 100; i++) {
			list.add(Demo.create(i, "demo-" + i, i));
		}
		model.addAttribute("list", list);
		return viewModel + "list";
	}
}
