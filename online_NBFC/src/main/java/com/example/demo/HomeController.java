package com.example.demo;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.adminService.AdminService;
import com.example.demo.adminService.admin_wallet_service;
import com.example.demo.adminService.loan_Service;
import com.example.demo.adminService.pendingLoanService;
import com.example.demo.adminService.request_Service;
import com.example.demo.adminService.statusService;
import com.example.demo.adminmodel.Admin;
import com.example.demo.model.Cust;
import com.example.demo.model.cust_apply;
import com.example.demo.service.CustService;
import com.example.demo.service.cust_apply_Service;
import com.example.demo.adminmodel.status;
import com.example.demo.adminmodel.loan;
import com.example.demo.adminmodel.pendingLoan;
import com.example.demo.adminmodel.call_request;
import com.example.demo.adminmodel.admin_wallet;

@Controller
public class HomeController {

	@Autowired
	CustService cs;
	
	@Autowired
	AdminService as;
	
	@Autowired
	statusService ss;
	
	@Autowired
	cust_apply_Service cas;
	
	@Autowired
	loan_Service ls;
	
	@Autowired
	pendingLoanService pls;
	
	@Autowired
	request_Service rs;
	
	@Autowired
	admin_wallet_service aws;
	
	@GetMapping("/")
	public String index()
	{
		return "index";
	}
	@GetMapping("/about")
	public String about()
	{
		return "about";
		
	}
	@GetMapping("/index")
	public String home()
	{
		return "index";
		
	}
	@GetMapping("/service")
	public String service()
	{
		return "service";
		
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
		
	}
	
	
	@GetMapping("/farmloan")
	public String farm()
	{
		return "farmloan";
	}
	
	@GetMapping("/vehicle")
	public String vehicle()
	{
		return "vehicle_loan";
	}
	
	
	
	@GetMapping("/cust_signup")
	public String signup()
	{
		return "cust_signup";
	}
	
	@PostMapping("/cust_reg")
	public  String insert(@ModelAttribute("c1") Cust c1,ModelMap m)
		{
		if(c1.getPass().equals(c1.getConf_pass())) 
		{
			  cs.getinfo(c1);
				return "redirect:/cust_login";
 
		}
		 
			 m.put("errorMsg", "Password and Confirm Password do not match");
			  return "cust_signup";  

		
		}	
	
	@GetMapping("/business")
	public String busi()
	{
		return "business";
	}
	
	@RequestMapping("/personal")
	public String personal()
	{
		return "personal";
		
	}
	
	@GetMapping("/cust_login")
	public String login()
	{
		return "cust_login";
	} 
	
	////---------------Call Request By Customer-----------------////
	@PostMapping("/call_request")
	public String call_request(@ModelAttribute("req") call_request req)
	{
		rs.request(req);
		return "redirect:/index";
		
	}
	
	
	////-------------Customer Login--------------------------////
	@PostMapping("/loginvalidater")
	public String logincust(@ModelAttribute("c1") Cust c1, HttpSession session, Model a) {
	    try {
	        String email = c1.getEmail();
	        String pass = c1.getPass();
	        Object logi = cs.check_login(email, pass);

	        if (Objects.nonNull(logi)) {
	            session.setAttribute("customer", c1.getEmail());
	            session.setAttribute("cust", c1.getId());
	            
	            session.setAttribute("email",email);
	            
	            return "redirect:/cust_home";
	        } else {
	            return "cust_login";
	        }
	    } catch (Exception e) {
	        // Handle the exception here
	       
	        a.addAttribute("error", e.getMessage()); // Print the exception stack trace for debugging
	        return "cust_login"; // Return an appropriate error page or message
	} 
	}
	
	@GetMapping("/cust_home")
	public String custHome(HttpSession session) {
	    String customer = (String) session.getAttribute("customer");
	    Integer custId = (Integer) session.getAttribute("cust");

	    if (customer != null && custId != null) {
	        // Session attributes are present, proceed with the logic for cust_home
	        // ...
	        return "cust_home";
	    } else {
	        // Session attributes are null, handle the case where the user is not logged in
	        // ...
	        return "cust_login";
} 
	   
	}
	
	@RequestMapping("/calculater")
	public String cal(HttpSession session)
	{
          if(session.getAttribute("customer") ==null) {
			
			return "redirect:/cust_login";
					
		}
		return "calculater";
		
	}
	
	@RequestMapping("/cust_logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("customer");
		session.invalidate();
		return "redirect:/cust_login";
			
	}
	
	
	
	@RequestMapping("/applyhere")
	public String apply(HttpSession session)
	{
		
		return "apply";
		
	}

	
	
	 
	@PostMapping("/next")
	public String uplaod1(@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3,@ModelAttribute("c3") cust_apply c3,HttpServletRequest request,Model a) {
		
		try {
			String filename=file1.getOriginalFilename();
			String path = "C:\\Users\\DELL\\OneDrive\\Desktop\\nbfc";
			byte []filedata=file1.getBytes();
			
			String filename1=file2.getOriginalFilename();
			String path1 = "C:\\Users\\DELL\\OneDrive\\Desktop\\nbfc2";
			byte []filedata1=file2.getBytes();
			
			String filename2=file3.getOriginalFilename();
			String path2 = "C:\\Users\\DELL\\OneDrive\\Desktop\\nbfc3";
			byte []filedata2=file3.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
			BufferedOutputStream bout1 = new BufferedOutputStream(new FileOutputStream(path1 + "/" + filename1));
			BufferedOutputStream bout2 = new BufferedOutputStream(new FileOutputStream(path2 + "/" + filename2));
			bout.write(filedata);
			bout.flush();
			bout.close();
			bout1.write(filedata1);
			bout2.write(filedata2);
			c3.setPancard(filename);
			c3.setAddharcard(filename1);
		    c3.setPhoto(filename2);
			
		/*	
			HttpSession s1 = request.getSession();
		    
			s1.setAttribute("a1",c3.getEmail());
			s1.setAttribute("a3",c3.getName());
			s1.setAttribute("a4",c3.getAddress());
			s1.setAttribute("a5",c3.getPnumber());
			s1.setAttribute("a6",c3.getLoantenure());
			s1.setAttribute("a7",c3.getLoanamt());
			s1.setAttribute("a8",c3.getIntrate());
			s1.setAttribute("a9",c3.getPfees());
			s1.setAttribute("a10",c3.getFinalamount());
			s1.setAttribute("a11",c3.getChoice());
			s1.setAttribute("a12",c3.getLoanchoice());*/
			
			cs.upload(c3);
			 
			return "redirect:/cust_home";
			
			
		} catch (Exception e) {
			a.addAttribute("error",e.getMessage());
			e.printStackTrace();
			return "Error uploading file: " + e.getMessage() ;
		}
		
		 
	}	
	
	@GetMapping("/cust_applied_loan")
	public String loan(status status, ModelMap m ,HttpSession session ,@RequestParam("email") String email )
	{
		 if(session.getAttribute("customer") ==null) 
		 {
			 
		return "redirect:/cust_login";
		}
		 
		 
		 List<status> l4 = ss.getemail(email);
		 Iterator<status> i1 = l4.iterator();
		
		 m.addAttribute("l4",l4);
		 
		 
		 //List<status> p2 = cas.getstatus();
		//m.addAttribute("p2",p2);
		return "cust_applied_loan";
		
	}
	
	
	
	//------------Pay EMi---------//
	
	@RequestMapping("/pay_emi")
	public String pay_emi()
	{
		return "pay_emi";
		
	}
	
	////------------Customer Wallet--------------////
	@RequestMapping("/cust_wallet")
	public String wallet(loan loan,ModelMap m,@RequestParam("email") String email)
	{
		List<loan> l5 = ls.getloan(email);
		Iterator<loan> i2 = l5.iterator();
		m.addAttribute("l5",l5);
		return "cust_wallet";
		
	}
	
	////--------------Change Password--------------////
	
	@RequestMapping("/change_pass")
	public String change_pass(@RequestParam("email") String email ,ModelMap m)
	{
		Cust cust = cs.change_pass(email);
		m.addAttribute("cust",cust);
		return "change_pass";
		
	}
	
	@PostMapping("/change_pass")
	public String update_pass(@ModelAttribute("c1") Cust c1 , String pass )
	{
		
			cs.update_pass(c1);
			 
			return "cust_home";
		
		
		
	}
		
		////-------------Paid EMI-------------////
	@RequestMapping("/paid_emi")
	public String paid_emi()
	{
		return "paid_emi";
	
	}
	
	////----------------Pending EMI-------------////
	
	@RequestMapping("/emi_pending")
	public String emi_pending()
	{
		return "emi_pending";
		
	}
	
		
		
	
	
	
 

	
	
	
////////////////////////////////////////////////////////////Admin//////////////////////////////////////////////////////////

	//Admin Login Mapping
 	@RequestMapping("/adminlogin")
	public String admin()
	{
		return "adminlogin";
		
	}
 	
 	 @PostMapping("/admin_login")
 	 public String adminlog(@ModelAttribute("ad_amt") admin_wallet ad_amt,@RequestParam ("username") String username,@RequestParam("password") String password ,HttpSession session,ModelMap m)
 	 {
 		 if(username.equals("admin@gmail.com") && password.equals("admin@123")) 
 		 {
 			 session.setAttribute("username",username);
 			// ad_amt.setAmount(0);
 	          //  aws.save_amt(ad_amt);
 			 return "redirect:/admin_dashboard";
 		 }
 		     m.put("errorMsg", "Please provide correct Admin Username and password !!");
             return "adminlogin";
 
 	 }
 	 @RequestMapping("/logoutadmin")
 	 public String logoutadmin(HttpSession session)
 	 {
 		 session.getAttribute("username");
 		 session.invalidate();
		return "adminlogin";
 		  
 	 }
 	@RequestMapping("/admin_dashboard")
 	public String dash(HttpSession session,ModelMap m)
 	{
if(session.getAttribute("username") ==null) {
	        
			return "redirect:/adminlogin";
			}
           // ad_amt.setAmount(0);
          //  aws.save_amt(ad_amt);
             List<admin_wallet>amt = aws.Show_amt();
             m.addAttribute("amt",amt);
 		return "admin_dashboard";
 	}
 

//Add member Mapping
@RequestMapping("/c_signup")
public String addmem()
{
	return "c_signup";
	 
}

@PostMapping("/c_reg")
public String c_reg(@ModelAttribute("c1") Cust c1,ModelMap m)
{
	if(c1.getPass().equals(c1.getConf_pass())) 
	{
		  cs.getinfo(c1);
			return "redirect:/cust_login";

	}
	 
		 m.put("errorMsg", "Password and Confirm Password do not match");
		  return "c_signup";  
	
}

@RequestMapping("add_member")
public String add()
{
	return "add_member";
	
}

@PostMapping("/addmember")
public String uplaod2(@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3,@ModelAttribute("c3") cust_apply c3) {
	
	try {
		String filename=file1.getOriginalFilename();
		String path = "C:\\Users\\DELL\\eclipse-workspace\\online_NBFC\\src\\main\\resources\\static\\fileuploadimg";
		byte []filedata=file1.getBytes();
		
		String filename1=file2.getOriginalFilename();
		String path1 = "C:\\Users\\DELL\\eclipse-workspace\\online_NBFC\\src\\main\\resources\\static\\fileuploadimg";
		byte []filedata1=file2.getBytes();
		
		String filename2=file3.getOriginalFilename();
		String path2 = "C:\\Users\\DELL\\eclipse-workspace\\online_NBFC\\src\\main\\resources\\static\\fileuploadimg";
		byte []filedata2=file3.getBytes();
		BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
		BufferedOutputStream bout1 = new BufferedOutputStream(new FileOutputStream(path1 + "/" + filename1));
		BufferedOutputStream bout2 = new BufferedOutputStream(new FileOutputStream(path2 + "/" + filename2));
		bout.write(filedata);
		bout.flush();
		bout.close();
		bout1.write(filedata1);
		bout2.write(filedata2);
		c3.setPancard(filename);
		c3.setAddharcard(filename1);
	    c3.setPhoto(filename2);
		cs.upload(c3); 
		 
		return "redirect:/admin_dashboard";
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		return "Error uploading file: " + e.getMessage();
	}
	
	 
}	
     @GetMapping("/viewMember")
public String viewmember(ModelMap m) 
{
	List <Cust> l1=cs.viewmember();
	m.addAttribute("l1",l1);
	return "viewMember";
	
}
     @GetMapping("/applied_loans")
     public String applied_list(ModelMap m)
     {
    	 List<cust_apply> a1=as.getallcust();
    	 m.addAttribute("a1",a1);
		return "applied_loans";
    	 
     }
     
     ////-------------Delete Appied Loans---------------////
     @RequestMapping("/delete")
     public String deleteappied(@RequestParam("id") int id)
     {
    	 cas.deleteappied(id);
		return "redirect:/applied_loans";
    	 
     }
     
     //view the database file 
     
     @RequestMapping("/viewfile")
     public String viewfile(@RequestParam("id") int id,ModelMap p)
     {
    	cust_apply ca= as.getsinglefile(id);
    	 p.addAttribute("user",ca);
		return "viewfile";
    	 
     }
     
     @PostMapping("/viewfile")
     public String status(@ModelAttribute("s1") status s1)
     {
    	
    			 
    		    ss.getstatus(s1);
    			return "redirect:/statusfile";
    			
    			
    		
    		 
    
    	 
     }
     
     /////Show ALL data////////

     @GetMapping("/statusfile")
     public String getstatus(ModelMap m)
     {
     	List <status> p1=ss.getallstatus();
     	m.addAttribute("p1",p1);
     	
     	return "statusfile";
     		
     }
     
     /////Show Only ACCEPTED data/////
     @GetMapping("/accepted_data")
     
     public String accepted_data(@RequestParam(required = false) String status,
			 ModelMap model,HttpSession session) {
		if(session.getAttribute("username")==null) {
			return"redirect:/admin_dashboard";
			
		}
		List<status> accepted_data = ss.accepted_data("accepted");
		model.addAttribute("accepted_data", accepted_data);
		return "accepted_data";
	}
     
     //////Show REJECTED data///////-----------
     
    @GetMapping("/rejected_data")
     public String rejected_data(@RequestParam(required = false) String status,
			 ModelMap model,HttpSession session) {
		if(session.getAttribute("username")==null) {
			return"redirect:/admin_dashboard";
			
		} 
		List<status> rejected_data = ss.rejected_data("rejected");
		model.addAttribute("rejected_data", rejected_data);
		return "rejected_data";
	} 
     
     
     ///////Update data//////
     
     @RequestMapping("/update")
     public String update(@RequestParam("id") int id,ModelMap e)
     {
    	status st = ss.getsinglestatus(id);
    	 e.addAttribute("cust",st);
		return "update_status";
    	  
     }
     @PostMapping("/update_status")
     public String update_status(@ModelAttribute("status") status status, pendingLoan ploan)
     {
    	 
    	/* status s1 = new status();
    	 s1.setId(status.getId());
    	 s1.setName(status.getName());
    	 s1.setEmail(status.getEmail());
    	 s1.setAddress(status.getAddress());
    	 s1.setPnumber(status.getPnumber());
    	 s1.setLoantenure(status.getLoantenure());
    	 s1.setLoanamt(status.getLoanamt());
    	 s1.setIntrate(status.getIntrate());
    	 s1.setPfees(status.getPfees());
    	 s1.setFinalamount(status.getFinalamount());
    	 s1.setChoice(status.getChoice());
    	 s1.setLoanchoice(status.getLoanchoice());
    	 s1.setStatus(status.getStatus());
    	 s1.setMessage(status.getMessage());*/
    	 ss.updatestatus(status); 
    	 pls.updatepending(ploan);
		return "redirect:/admin_dashboard";
    	 
     } 
     
     @RequestMapping("/pay_transection")
     public String pay_transection(@RequestParam("id") int id,ModelMap m)
     {
    	 
    	 status stpay = ss.getpay(id); 
    	 m.addAttribute("pay",stpay);
    	
		return "pay_transection";
    	 
     }
     
     @PostMapping("/pay")
     public String pay(@RequestParam("id") int id ,@ModelAttribute("loan") loan loan)
     {
    	 ls.pay_transection(loan);
    	 ss.deletedata(id);
		return "redirect:/accepted_data";
    	 
     }
     /*
     //--------------------After the click pay button delete record--------------//
     @RequestMapping("/pay_transection")
     public String delete(@RequestParam("id") int id)
     {
    	 ss.deletedata(id);
		return "pay_transection";
    	 
     }
     */
     
     /////search customer by name/////
     @PostMapping("/search")
		public String search(@RequestParam(required = false) String name,
				 ModelMap model,HttpSession session) {
			if(session.getAttribute("username")==null) {
				return"redirect:/admin_dashboard";
				
			}
			List<Cust> l1 = cs.search(name);
			model.addAttribute("l1", l1);
			return "viewMember"; 
		}
  
     //--------------cust apply request search--------------//
     
     @PostMapping("/apply_search")
		public String apply_search(@RequestParam(required = false) String name,
				 ModelMap model,HttpSession session) {
			if(session.getAttribute("username")==null) {
				return"redirect:/admin_dashboard";
				
			}
			List<cust_apply> a1 = cas.apply_search(name);
			model.addAttribute("a1", a1);
			return "applied_loans"; 
		}
     
     //-----------------Paid Transections--------------//
     
     @RequestMapping("/paid_transections")
     public String paid_transections(ModelMap m)
     {
    	 List<loan>loan = ls.paid_transections();
    	 m.addAttribute("loan",loan);
		return "paid_transections";
    	 
     }

  /*
  @GetMapping("/search_result")
		public String result(HttpSession session) {
			if(session.getAttribute("username")==null) {
				return"redirect:/admin_dashboard";
				
			}
			return "search_result";

		}*/
     
     ////--------------------Peanding Loan Details------------------////
     @RequestMapping("/pendingLoan")
     public String pendingLoan(@RequestParam("id") int id,ModelMap p)
     {
    	 status ps = pls.pendingdata(id);
    	 p.addAttribute("ps",ps);
    	 
		return "pendingLoan";
    	 
     }
     
     @PostMapping("/Addpending")
     public String addpending(@ModelAttribute("ploan") pendingLoan ploan)
     {
    	 pls.savedata(ploan); 
		return "redirect:/applied_loans";
    	 
     }
     
     
    ////------------Pending Details------------////
     @RequestMapping("/pending_details")
     public String pending_details(ModelMap m)
     {
    	 List<pendingLoan>pl = pls.pending_details();
    	 m.addAttribute("pl",pl);
		return "pending_details";
    	 
     }
     
     ////---------------ApprovePending---------------////
     @RequestMapping("/ApprovePending")
     public String ApprovePending(@RequestParam("id") int id ,ModelMap m)
     {
    	 pendingLoan pl = pls.approve_pending(id);
    	 m.addAttribute("pl",pl);
		return "ApprovePending";
    	 
     }
     
     
     
     ////--------Delete Pending---------////
     @RequestMapping("/DeletePending")
     public String deletepending(@RequestParam("id") int id)
     {
    	 pls.delete_pending(id);
		return "redirect:/pending_details";
    	 
     }
     
     ////---------------Admin Wallet-----------////
     @RequestMapping("/admin_wallet")
     public String admin_wallet(ModelMap m)
     {
    	// List<admin_wallet>amt = aws.Show_amt();
    	// m.addAttribute("amt",amt);
		return "admin_wallet";
    	 
     }
     
     @PostMapping("/admin_wallet")
     public String ad_wallet(@ModelAttribute("ad_amt") admin_wallet ad_amt,@RequestParam("amount") String amount)
     {
    	 /*
    	 String x=amount;
    	
    	 int a,b,c;
    	 admin_wallet as = aws.updata(amount);
    	 String t=aw.getAmount();
    	
    	 a=Integer.parseInt(x);
    	 b=Integer.parseInt(t);
    	 
    	 c=a+b;
    	 System.out.println(c);
    	 admin_wallet aa  = new admin_wallet();
    	 aa.setId(aw.getId());
    	 aa.setAmount(aw.getAmount());
    	 aa.setTime(aw.getTime());*/
    	 
    	 aws.save_amt(ad_amt);
    	 
    	
    	 
    	 
		return "redirect:/admin_dashboard";
    	 
     }
     
     @RequestMapping("/update_wallet")
     public String update_amt(@RequestParam("id") int id,ModelMap m)
     {
    	 admin_wallet aw = aws.update_wallet(id);
    	 m.addAttribute("aw",aw);
		return "update_wallet";
    	 
     }


     @PostMapping("/updatew")
     public String updatew(@ModelAttribute("awallet") admin_wallet awallet,@RequestParam ("camount") String camount,@RequestParam ("amount") String amount,ModelMap m)
     {
    	 String x,y,z;
    	 x=camount;
    	 y=amount;
    	 
    	 int a,b,c;
    	 a=Integer.parseInt(x);
    	 b=Integer.parseInt(y);
    	 c=a+b;
    	 
    	 
    	// System.out.println(c);
    	 admin_wallet aa = new admin_wallet();
    	 aa.setId(awallet.getId());
    	 aa.setTime(awallet.getTime());
    	 aa.setAmount(c);
    	 
    	 
    	 aws.save_amt(aa);
		return "redirect:/admin_dashboard";
    	 
     } 
     
     
   
     
     
     ////------------- Show Call Request From Customer------------////
     
     @RequestMapping("/call_request")
     public String call_req(ModelMap m)
     {
    	 List<call_request> req = rs.call_request();
    	 m.addAttribute("req",req);
		return "call_request";
    	 
     }
     
     
    
/*
  


	
 

	
//Dashboard Mapping
@RequestMapping("/index")
public String dashboard()
{
	return "index";
	
}

// Member Mapping
	@RequestMapping("/cust")
	public String clogin()
	{
		return "login";
		
	}
	
	*/
	
	
}
 