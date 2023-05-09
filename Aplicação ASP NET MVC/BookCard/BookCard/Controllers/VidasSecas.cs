using BookCard.DAL;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookCard.Controllers
{
    public class VidasSecas : Controller
    {
        public IActionResult Capum()
        {
            CARDTEXTODAO card = new CARDTEXTODAO();
            ViewBag.textoinicial = card.TextodoCard();
            return View();
        }
    }
}
