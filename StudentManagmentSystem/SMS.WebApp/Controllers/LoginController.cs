using SMS.WebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SMS.WebApp.Controllers
{
    
    public class LoginController : Controller
    {
        StudentManagmentSystemEntities db=new StudentManagmentSystemEntities();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(User user)
        {
            if(ModelState.IsValid)
            {
               using(StudentManagmentSystemEntities db=new StudentManagmentSystemEntities())
                {
                    var obj = db.Users.Where(x => x.User_Name.Equals(user.User_Name) && x.Password.Equals(x.Password)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UId"] = obj.UId;
                        Session["User_Name"] = obj.User_Name;
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        ModelState.AddModelError("","UserrName && Password Incorrect");
                    }
                }
            }
            return View(user);
        }
    }
}