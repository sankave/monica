package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

//This is LoginController
@RestController
public class LoginController {
@Autowired
Repository ser;
	
	/*@RequestMapping("/hello")
public ModelAndView hello()
{
		return new ModelAndView("Hello");
}
	
	@RequestMapping("/welcome")
	public ModelAndView welcome()
	{
			return new ModelAndView("Welcome");
	}
	*/
	
	@RequestMapping("/login")
	public ModelAndView login()
	{
			return new ModelAndView("Home");
	}
	
	@RequestMapping("/addemployee")
	public ModelAndView AddEmp(@ModelAttribute("emp")Employee emp)
	{
			return new ModelAndView("AddEmployee");
	}
	
	@RequestMapping("/saveemp")
	public ModelAndView SaveEmp(@ModelAttribute("emp")Employee emp)
	{
		ser.save(emp);
			return new ModelAndView("redirect:/listEmployee");
	}
	
	@RequestMapping("/listEmployee")
	public ModelAndView ListEmp(@ModelAttribute("emp")Employee emp)
	{
		List<Employee> ls=(List<Employee>) ser.findAll();
		return new ModelAndView("ViewEmployee","list",ls);

	}
	
	@RequestMapping("/Delete")
	public ModelAndView DeleteEmp(HttpServletRequest request,@ModelAttribute("emp")Employee emp)
	{
		int empid = Integer.parseInt(request.getParameter("id"));
		ser.delete(empid);
	return new ModelAndView("redirect:/listEmployee");
    }
	
	@RequestMapping(value = "/edit")
    public ModelAndView editstudent(HttpServletRequest request, @ModelAttribute("emp") Employee emp) {
                    int empid = Integer.parseInt(request.getParameter("id"));
                    Employee edetails = ser.findEmployeeById(empid);
                    HttpSession session=request.getSession();
                    session.setAttribute("id",empid);
                    System.out.println("Fect" + edetails.getId());
                    List<Employee> ls = (List<Employee>) ser.findAll();
                    ModelAndView model = new ModelAndView("success", "list", ls);
                    model.addObject("empform", edetails);
                    return model;
    }
    @RequestMapping("/update")
    public ModelAndView updateEmployee(@ModelAttribute("emp") Employee emp) {
                   System.out.println("update");
                    ser.save(emp);
                    return new ModelAndView("redirect:/listEmployee");
    }

}
