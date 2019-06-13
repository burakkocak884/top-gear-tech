



$(function(){
  console.log('garages are loading!!!')
 listenForClick()
});


 function listenForClick(){
$('button#garages-data').on('click', function(event) {
 event.preventDefault()
 debugger
 getGarages()


})
}


function getGarages(){
 $.ajax({
 url: 'https://localhotst:3000/garage/',
 method: 'get',
 datatype: 'json'


 }).done(function (data) {
 console.log("the data is :", data);
 let mygarage = new Garage(data[0])
 let myGarageHTML = myGarage.garageHtMl()

 document.getElementById('ajax-garages').innerHTML += myGarageHTML
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

// fetch to garages to collect array of all $.getJSON -> map into array pf only id's -> only fetch if id is in this array  
console.log("garage");
$(function () {
  $(".js-next").on("click", function(e) {
    e.preventDefault()
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;

    $.getJSON("/garages/" + nextId , function(data) {
      $("#garageName").text(data["name"]);
      $("#garageLocation").text(data["location"]);
      $("#garageTire").text(data["tire_service"]);
      $("#garageService").text(data["service_any_vehicle"]);
    
      // re-set the id to current on the link
      $(".js-next").attr("data-id", data["id"]);
    });
  });
});


$(function () {
  $(".js-previous").on("click", function(e) {
    e.preventDefault()
    var nextId = parseInt($(".js-next").attr("data-id")) - 1;
    $.getJSON("/garages/" + nextId , function(data) {
      $("#garageName").text(data["name"]);
      $("#garageLocation").text(data["location"]);
      $("#garageTire").text(data["tire_service"]);
      $("#garageService").text(data["service_any_vehicle"]);
     
      // re-set the id to current on the link
      $(".js-previous").attr("data-id", data["id"]);
    });
  });
});




