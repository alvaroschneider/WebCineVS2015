using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication2.Controllers
{
    public class ComprarController : Controller
    {
        // GET: Comprar
        public ActionResult Index(int id)
        {
            ViewBag.Message = "Para continuar con la compra seleccione Comprar";
            var repository = new ModelCL.Repository();
            var model = repository.getPeliculaByID(id);
            return View(model);
        }

        public ActionResult Complejos(int id)
        {
            ViewBag.Message = "Listado de Complejos";
            var repository = new ModelCL.Repository();
            var model = repository.getComplejos();
            return View(model);
        }
    }
}