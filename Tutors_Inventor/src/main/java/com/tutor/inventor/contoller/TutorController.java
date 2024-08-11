package com.tutor.inventor.contoller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.http.HttpHeaders;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.apache.tomcat.util.http.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.cdi.Eager;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.tutor.inventor.model.Contact;
import com.tutor.inventor.model.ParentReg;
import com.tutor.inventor.model.RequestDemo;
import com.tutor.inventor.model.TutorReg;
import com.tutor.inventor.model.adminpage;
import com.tutor.inventor.model.ebook;
import com.tutor.inventor.service.ParentService;
import com.tutor.inventor.service.TutorService;
import com.tutor.inventor.service.adminservice;
import com.tutor.inventor.service.contactservice;
import com.tutor.inventor.service.ebookservice;
import com.tutor.inventor.service.requestservice;

import net.bytebuddy.asm.Advice.Return;

@Controller
public class TutorController {

	@Autowired
	ParentService ts;
	@Autowired
	TutorService tts;
	@Autowired
	adminservice as;
	@Autowired
	ebookservice es;
	@Autowired
	requestservice rs;
	@Autowired
	contactservice cs;

	@GetMapping("/")
	public String StartForm() {

		return "start";
	}

	@GetMapping("/parentreg")
	public String ParentRegform() {

		return "parentreg";

	}

	@GetMapping("/tutorreg")
	public String TutorRegform() {

		return "tutorreg";

	}

	@PostMapping("/register")
	public String processRegistrationForm(@ModelAttribute("parentReg") ParentReg parentReg) {

		ts.insertdata(parentReg);

		return "redirect:/success";
	}

	@PostMapping("/register1")
	public String tutorreg(@ModelAttribute("tr") TutorReg tr) {
		tts.insertdata(tr);
		return "redirect:/success1";
	}

	@GetMapping("/success")
	public String successpage() {
		return "success";

	}
	@GetMapping("/success1")
	public String successpage1() {
		return "success1";

	}

	@GetMapping("/parentlogin")
	public String loginpage() {
		return "parentlogin";

	}

	@GetMapping("/tutorlogin")
	public String loginpagetutor() {
		return "tutorlogin";

	}

	@PostMapping("/loginvalidparent")
	public String loginvalidate(@ModelAttribute("tparent") ParentReg tparent,HttpSession session) {
		try {
			ParentReg parentlog = ts.login(tparent.getEmail(), tparent.getPass());
			if (parentlog != null) {
				
				session.setAttribute("parent", parentlog);
				return "redirect:/parenthome";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return "parentlogin";

	}
	@GetMapping("/parentlogout")
	public String parentlogout(HttpSession session) {
		
		session.removeAttribute("parent");
		session.invalidate();
		return "redirect:/parentlogin";
		
	}
	
	@PostMapping("/loginvalidtutor")
	public String logintutor(@ModelAttribute("tutor") TutorReg tutor,HttpSession session) {
		try {
			
			TutorReg ttt=tts.login(tutor.getEmail(), tutor.getPass());
			
			
			if(ttt!=null) {
				session.setAttribute("tutor", ttt);
				return "redirect:/tutorhome";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "tutorlogin";
		
	}
	@GetMapping("/tutorlogout")
	public String tutorlogout(HttpSession session) {
		session.removeAttribute("tutor");
		session.invalidate();
		
		return "redirect:/tutorlogin";
		
	}

	@GetMapping("/parenthome")
	public String homepage(HttpSession session) {
		if (session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		return "parenthome";

	}
	
	@GetMapping("/tutorhome")
	public String tutorhome(HttpSession session) {
		if(session.getAttribute("tutor")==null) {
			return"redirect:/tutorlogin";
		}
		return "tutorhome";

	}

	@GetMapping("/tutorlist")
	public String list(HttpSession session) {
		if(session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		return "tutorlist";

	}

	@PostMapping("/searchvalid")
	public String search(@RequestParam(required = false) String state, @RequestParam(required = false) String city,
			@RequestParam(required = false) String area, ModelMap model,HttpSession session) {
		if(session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		List<TutorReg> tutorlist = tts.search(state, city, area);
		model.addAttribute("tutorlist1", tutorlist);
		return "tutorlist";
	}

	@GetMapping("/admin")
	public String admin() {
		return "admin";

	}

	@PostMapping("/adminvalid")
	public String adminlogin(@ModelAttribute("ads") adminpage ads, HttpSession session) {
	  try {
	    adminpage ap = as.login(ads.getUsername(), ads.getPassword());
	    if (ap != null) {
	      // Add session attribute for logged-in user
	      session.setAttribute("adminpage", ap);
	      return "redirect:/admindash";
	    }
	  } catch (Exception e) {
	    // TODO: handle exception
	  }

	  return "admin";
	}
	@GetMapping("/adminlogout")
	public String adminlogout(HttpSession session) {
	  // Remove session attribute and invalidate session
	  session.removeAttribute("adminpage");
	  session.invalidate();
	  return "redirect:/admin";
	}


	@GetMapping("/admindash")
	public String admindashboard(ModelMap model, HttpSession session) {
	  // Check if session attribute exists
	  if (session.getAttribute("adminpage") == null) {
	    // User is not logged in, redirect to login page
	    return "redirect:/admin";
	  }

	  long totalparent = ts.totalparent();
	  long totaltutor = tts.totaltutor();
	  long totalebook=es.totalebook();
	  model.addAttribute("totalparent", totalparent);
	  model.addAttribute("totaltutor", totaltutor);
	  model.addAttribute("totalebook", totalebook);
	  return "admindash";
	}


	@GetMapping("/parentsadmin")
	public String parentadmin(@ModelAttribute("pp") ParentReg pp, ModelMap model,HttpSession session) {
		
		
		// Check if session attribute exists
		  if (session.getAttribute("adminpage") == null) {
		    // User is not logged in, redirect to login page
		    return "redirect:/admin";
		  }
		
		List<ParentReg> parent = ts.allparent(pp);
		model.addAttribute("parent", parent);

		return "parentsadmin";

	}
	
	@GetMapping("/deleteparent")
	public String deleteparent(@RequestParam("id") Integer id) {
		ts.delete(id);
		return"redirect:/parentsadmin" ;
		
	}
	@GetMapping("/editparent")
	public String editparent(@RequestParam("id") Integer id,ModelMap model) {
		
		ParentReg pr= ts.editparent(id);
		model.addAttribute("editp", pr);
		return"editparent";	
	}
	@PostMapping("/next1")
	public String editpar(@ModelAttribute("t") ParentReg t) {
		ts.insertdata(t);
		
		
		return "redirect:/parentsadmin";
		
	}

	@GetMapping("/tutoradmin")
	public String tutoradmin(@ModelAttribute("tr") TutorReg tr, ModelMap model,HttpSession session) {
		List<TutorReg> tutor = tts.allparent(tr);
		model.addAttribute("tutor", tutor);
		if (session.getAttribute("adminpage")==null) {
			return"redirect:/admin";
			
		}
		return "tutoradmin";

	}

	@GetMapping("/addebook")
	public String addebook(HttpSession session) {
		if (session.getAttribute("adminpage")==null) {
			return"redirect:/admin";
			
		}
		
		return "addebook";

	}

	@PostMapping("/upload")
	public String uploadfile(@RequestParam("file") MultipartFile file, @ModelAttribute("eb") ebook eb) {

		try {
			String filename = file.getOriginalFilename();
			String path = "C:\\MANGESH\\tutor";
			byte[] filedata = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
			bout.write(filedata);
			bout.flush();
			bout.close();

			eb.setFilename(filename);
			es.uploadFile(eb);

			System.out.println(filename);
			return "redirect:/addebook";
		} catch (Exception e) {
			e.printStackTrace();
			return "Error uploading file: " + e.getMessage();

		}

	}

	@GetMapping("/ebooklist")
	public String ebooklist(@ModelAttribute("ess") ebook ess, ModelMap model,HttpSession session) {
		if (session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		
		List<ebook> ebooklist = es.ebooklist(ess);
		model.addAttribute("ebooklist", ebooklist);

		return "ebooklist";

	}
	@GetMapping("/ebooklist1")
	public String ebooklist1(@ModelAttribute("ess") ebook ess, ModelMap model,HttpSession session) {
		if (session.getAttribute("tutor")==null) {
			return"redirect:/tutorlogin";
			
		}
		
		List<ebook> ebooklist = es.ebooklist(ess);
		model.addAttribute("ebooklist", ebooklist);

		return "ebooklist1";

	}

	
	
	
	@GetMapping("/downloadebook")
	public void downloadFile(@RequestParam("name") String name, HttpServletResponse response) throws IOException {
	    String filePath = "C:\\MANGESH\\tutor\\" + name;
	    File file = new File(filePath);

	    response.setContentType("application/octet-stream");
	    String extension = FilenameUtils.getExtension(name);
	    response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "." + extension);
	    response.setContentLength((int) file.length());

	    InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
	    OutputStream outputStream = response.getOutputStream();
	    byte[] buffer = new byte[1024];
	    int bytesRead;
	    while ((bytesRead = inputStream.read(buffer)) != -1) {
	        outputStream.write(buffer, 0, bytesRead);
	    }
	    outputStream.flush();
	    inputStream.close();
	}


	@GetMapping("/deletetutor")
	public String deletetutor(@RequestParam("id") Integer id) {
		
		tts.delete(id);
		return "redirect:/tutoradmin";
		
	}
	@GetMapping("/edittutor")
	public String edittutor(@RequestParam("id") Integer id,ModelMap model) {
		TutorReg tutor= tts.edittutor(id);
		model.addAttribute("edit", tutor);
		
		
		return "edittutor";
		
	}
	@PostMapping("/next")
	public String editmethod(@ModelAttribute("t") TutorReg t) {
		tts.saveeditdata(t);
		
		
		return "redirect:/tutoradmin";
		
	}
	@GetMapping("/sendrequest")
	public String requestsend(@RequestParam("id") Integer id,ModelMap model,TutorReg t,HttpSession session) {
		TutorReg tr= tts.edittutor(id);
		model.addAttribute("tt", tr);
		
		if (session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		return "sendrequest";
		
	}
	
	@PostMapping("/request")
	public String sendrequest(@RequestParam("id") int id,@ModelAttribute("reqq") RequestDemo reqq,TutorReg tt,HttpSession session) {
		
		reqq.setTutor(tt);
		rs.request(reqq);
		if (session.getAttribute("parent")==null) {
			return"redirect:/parentlogin";
			
		}
		
		return "redirect:/parenthome";
		
	}
	@GetMapping("/tutorreq")
	public String tutorreq(HttpSession session) {
		if (session.getAttribute("tutor")==null) {
			return"redirect:/tutorlogin";
			
		}
		
		return "tutorreq";
		
	}
	@PostMapping("/see")
	public String requestlist(@RequestParam Integer id,ModelMap model,HttpSession session) {
		
		if (session.getAttribute("tutor")==null) {
			return"redirect:/tutorlogin";
			
		}
		
		List<RequestDemo> rr= rs.getRequestDemosByTutorId(id);
		model.addAttribute("req", rr);
		
		
		return "requestlist";
		
		
		
	}
	
		
 @GetMapping("/requestlist")
 public String reqq(HttpSession session) {
	 if (session.getAttribute("tutor")==null) {
			return"redirect:/tutorlogin";
			
		}
	return "requestlist";
	 
 }
 
 @GetMapping("/contactus")
public String contactus() {
	return "contactus";
	 
 }
 @PostMapping("/contact")
 public String contact(@ModelAttribute("cr") Contact cr) {
	 cs.contact(cr);
	return "redirect:/contactus";
	 
 }
	
 @GetMapping("/findpass")
 public String findpass() {
	return "findpass";
	 
 }
 @PostMapping("/nextpass")
 public String nextpass(@ModelAttribute("tt") TutorReg tt,ModelMap model) {
	try {
		TutorReg t= tts.findpass(tt.getEmail());
		if (t!=null) {
			model.addAttribute("pass", t);
			return "showpass";
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	 
	
	 
	return "findpass";
	
 }
 @GetMapping("/showpass")
 public String showpass() {
	return "showpass";
	 
 }
 @GetMapping("/findparentpass")
 public String findparentpass() {
	return "findparentpass";
	 
 }
 @PostMapping("/parentpass")
 public String parentpass(@ModelAttribute("pr") ParentReg pr,ModelMap model) {
	try {
		ParentReg prs= ts.findpass(pr.getEmail());
		if(prs!=null) {
			model.addAttribute("parentpass", prs);
			return "showparentpass";
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	 
	 
	return "findparentpass";
	 
 }
 
 /*-------- Session apply-------- */
	
}
