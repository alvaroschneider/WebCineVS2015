using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication2.Controllers
{
    public class PeliculasController : Controller
    {
        // GET: Peliculas
        public ActionResult Index()
        {
            ViewBag.Message = "Listado de Peliculas Disponibles";
            var repository = new ModelCL.Repository();
            var model = repository.getPeliculas();
            return View(model);
        }

        public ActionResult Details(int id)
        {
            var repository = new ModelCL.Repository();
            var model = repository.getPeliculaByID(id);
            return View(model);
        }

    }
}