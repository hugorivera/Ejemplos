using Ejemplos.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ejemplos.Controllers
{
    public class HomeController : Controller
    {

        EjemplosEntities db = new EjemplosEntities();

        // GET: Home
        public ActionResult Index()
        {
            return View(db.productos.ToList());
        }

        public JsonResult GetFilteredData(string SearchBy, string SearchValue)
        {
            List<productos> producto = new List<productos>();
            if(SearchBy == "ID")
            {
                try
                {
                    int id = Convert.ToInt32(SearchValue);
                    producto = db.productos.Where(x => x.id == id || SearchValue == null).ToList();
                }
                catch (FormatException)
                {
                    Console.WriteLine("{0} no es Id", SearchValue);
                }
                return Json(producto, JsonRequestBehavior.AllowGet);
            }
            else
            {
                producto = db.productos.Where(x => x.nombre.Contains(SearchValue) || SearchValue == null).ToList();
                return Json(producto, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult GetProductos()
        {
            List<productos> productos = db.productos.ToList();
            return Json(productos, JsonRequestBehavior.AllowGet);
        }
    }
}