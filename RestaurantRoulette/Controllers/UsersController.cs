using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc;
using RestaurantRoulette.Models;


namespace RestaurantRoulette.Controllers
{
  public class UserController : Controller
  {
    //Offers Login Form for existing User
    [HttpGet("/users/login")]
    public ActionResult Index()
    {
      return View();
    }

    //Offers Register for New User
    [HttpGet("/users/new")]
    public ActionResult New()
    {
      return View();
    }

    //Posts Registration Details for new User
    [HttpPost("/users")]
    public ActionResult Create(string userName, string userPassword)
    {
      User newUser = new User(userName, userPassword);
      newUser.Save();
      RestaurantRoulette.Models.User newFoundUser = RestaurantRoulette.Models.User.Find(newUser.GetId());
      return View("Show", newFoundUser);
    }

    [HttpPost("/users/{userName}/{userPassword}")]
    public ActionResult Show(string userName, string userPassword)
    {
      User foundUser = RestaurantRoulette.Models.User.FindWithUserNameAndPassword(userName, userPassword);
      return View(foundUser);
    }

    [HttpGet("/users/{id}/edit")]
    public ActionResult Edit(int id)
    {
      User newUser = RestaurantRoulette.Models.User.Find(id);
      return View(newUser);
    }

    [HttpPost("/users/{id}/update")]
    public ActionResult Update(int userDist, int userPrice, string userBio, int id)
    {
      User editUser = RestaurantRoulette.Models.User.Find(id);
      editUser.Edit(userDist, userPrice, userBio);
      return View("Show", editUser);
    }

    [HttpGet("/users/{id}/all")]
    public ActionResult All(int id)
    {
      User foundUser = RestaurantRoulette.Models.User.Find(id);
      List<Favorite> allRestaurantList = foundUser.AllRestaurantSortList();
      List<Marker> foundMarkers = Marker.GetAllRestaurantMarkers(allRestaurantList);
      return View(foundMarkers);

    }

    [HttpGet("/users/{id}/fav")]
    public ActionResult Fav(int id)
    {
      Dictionary<string, object> model = new Dictionary<string, object>();
      User foundUser = RestaurantRoulette.Models.User.Find(id);
      List<Favorite> allFavRestaurantList = foundUser.GetUserFavorite();
      model.Add("user",  foundUser);
      model.Add("favoriteRestList", allFavRestaurantList);
      return View(model);
    }

  }
}
