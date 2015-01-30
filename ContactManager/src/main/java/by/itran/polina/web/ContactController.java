package by.itran.polina.web;

import by.itran.polina.domain.Contact;
import by.itran.polina.service.ContactService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;
     
        @RequestMapping("/contact")
	public String listContacts(Map<String, Object> map) {

		map.put("contact", new Contact());
		map.put("contactList", contactService.listContact());

		return "contact";
	}
	
	@RequestMapping("/index")
	public String home() {
		return "/index";
	}

        @RequestMapping("/login")
	public String log_in() {
		return "login";
	}
        
        @RequestMapping("/")
	public String first() {
		return "redirect:/index";
	}
        
        @RequestMapping("/error403")
	public String err403() {
		return "error403";
	}
        
        @RequestMapping("/error404")
	public String err404() {
		return "error404";
	}
        
        @RequestMapping("/hiJack")
	public String hello() {
		return "hiJack";
	}
        
	@RequestMapping(value = "/addContact", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact") Contact contact,
			BindingResult result) {

		contactService.addContact(contact);

		return "redirect:/index";
	}

	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId") Integer contactId) {

		contactService.removeContact(contactId);

		return "redirect:/index";
	}  
                
}
