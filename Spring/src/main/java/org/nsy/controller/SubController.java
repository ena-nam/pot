package org.nsy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubController {

	@GetMapping("/subscription")
	public void submove() {}
}
