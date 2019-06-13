



$(function(){
  console.log('garages are loading');

});


function listenForClick(){
 $.ajax({
 url: 'https://localhotst:3000/garages',
 method: 'get',
 datatype: 'json'


 }).done(function (data) {
 console.log("the data is :" data)
 let my garage = new Garage(data[0])
 let myGarageHTML = myGarage.garageHtMl()

 document.getElementByIn('ajas-garages').innerHTML += myGarageHTML
})
}


class Garage {
 constructor(grj){

 this.id = grj.id
 this.name = grj.name
 this.location = grj.location
 this.tire_service = grj.tire_service
 this.service_any_vehicle = grj.service_any_vehicle
 this.user_id = grj.user_id
}
}
Garage.prototype.garageHTML = function(){
return (`
 <div>
 <h3>${this.name}</h3>
 <p>${this.location}</p>
 </div>
`)


}


// $(function () {
//   $(".js-next").on("click", function(e) {
//     e.preventDefault()
//     var nextId = parseInt($(".js-next").attr("data-id")) + 1;
//     $.getJSON("/garages/" + nextId , function(data) {

//       $("#garageName").text(data["name"]);
//       $("#garageLocation").text(data["location"]);
//       $("#garageTire").text(data["tire_service"]);
//       $("#garageService").text(data["service_any_vehicle"]);
      
//       // re-set the id to current on the link
//       $(".js-next").attr("data-id", data["id"]);
//     });
//   });
// });


// $(function () {
//   $(".js-previous").on("click", function(e) {
//     e.preventDefault()
//     var nextId = parseInt($(".js-next").attr("data-id")) - 1;
//     $.getJSON("/garages/" + nextId , function(data) {

//       $("#garageName").text(data["name"]);
//       $("#garageLocation").text(data["location"]);
//       $("#garageTire").text(data["tire_service"]);
//       $("#garageService").text(data["service_any_vehicle"]);
//       // re-set the id to current on the link
//       $(".js-previous").attr("data-id", data["id"]);
//     });
//   });
// });
  // $("#garageShow").on("click", function() {
  //   var id = $(this).data("id");
  //   $.get("/products/" + id + ".json", function(data) {
  //     var product = data;
  //     var inventoryText = "<strong>Available</strong>";
  //     if(product["inventory"] === 0){
  //       inventoryText = "<strong>Sold Out</strong>";
  //     }
  //     var descriptionText = "<p>" + product["description"] + "</p><p>" + inventoryText + "</p>";
  //     $("#product-" + id).html(descriptionText);
  //     var orders = product["orders"];
  //     var orderList = "";
  //     orders.forEach(function(order) {
  //       orderList += '<li class="js-order" data-id="' + order["id"] + '">' + order["id"] + ' - ' + order["created_at"] + '</li>';
  //     });
  //     $("#product-" + id + "-orders").html(orderList);
  //   });
  });
