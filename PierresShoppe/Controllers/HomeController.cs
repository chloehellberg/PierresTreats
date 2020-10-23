using Microsoft.AspNetCore.Mvc;

namespace PierresShoppe.Controllers
{
  public class HomeController : Controller
  {

    [HttpGet("/")]
    public ActionResult Index()
    {
      return View();
    }

  }
}