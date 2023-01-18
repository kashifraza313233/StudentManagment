using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SMS.WebApp.Models;

namespace SMS.WebApp.Controllers
{
    public class LoginController : Controller
    {
        StudentManagmentSystemEntities2 db =new StudentManagmentSystemEntities2();
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
                using (StudentManagmentSystemEntities2 db = new StudentManagmentSystemEntities2())
                {
                    var usr = db.Users.Where(x => x.Email.Equals(x.Email) && x.Password.Equals(x.Password)).FirstOrDefault();
                    if (usr != null)
                    {
                        Session["UId"] = user.UId.ToString();
                        Session["Email"] = user.Email.ToString();
                        return RedirectToAction("Index", "Courses");
                    }
                    else
                    {
                        ModelState.AddModelError("","Email or Password is Incorrect!");
                    }
                }
            }
           
            return View();
        }
    }
}