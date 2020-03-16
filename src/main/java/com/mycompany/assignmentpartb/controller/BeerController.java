/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.assignmentpartb.controller;

import com.mycompany.assignmentpartb.model.BeerService;
import com.mycompany.assignmentpartb.model.Beers;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Adam
 */
@Controller
@RequestMapping("/beers")
public class BeerController {
    @Autowired
    BeerService service;
    
    @RequestMapping("/search")
    public ModelAndView searchBeerPage(@Valid @ModelAttribute("beers") Beers b, BindingResult result, ModelMap model){
        return new ModelAndView("/viewSearchPage");
    }
    
    @RequestMapping("/findBeerBySearch")
    public ModelAndView findBeerBySearch(@RequestParam("name") String name, ModelAndView viewModel){
     viewModel.addObject("beers", service.Search(name));
        viewModel.setViewName("/viewBeerResult");
        return viewModel;
    }
    
    @RequestMapping("/viewBeerById")
    public ModelAndView viewById(@RequestParam int id){
        Beers b = service.getBeerById(id);
        return new ModelAndView("/increasePrice", "beers", b);
    }
    
    @RequestMapping("/increasePrice{percentageIncrease}")
    public ModelAndView increasePrice(@PathVariable int percentageIncrease){
        System.out.println(percentageIncrease);
        return new ModelAndView("redirect:/search");
    }
}
