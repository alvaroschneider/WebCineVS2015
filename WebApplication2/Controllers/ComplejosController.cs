using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication2.Controllers
{
    public class ComplejosController : Controller
    {
        // GET: Complejos
        public ActionResult Index()
        {
            ViewBag.Message = "Listado de Complejos";
            var repository = new ModelCL.Repository();
            var model = repository.getComplejos();
            return View(model);
        }
    }
}