



$(function(){
  console.log('garages are loading!!!')
 listenForClick()
});


 function listenForClick(){
$('button#garages-data').on('click', function(event) {
 event.preventDefault()

let garageId = event["currentTarget"]["dataset"]["id"]
 getGarage(garageId);


})
$('button#garageAppointments').on('click', function(event) {
 event.preventDefault()

let garageId = event["currentTarget"]["dataset"]["id"]
 getAppointments(garageId);


})
}


function getGarage(theId){


 
  
 $.getJSON("/garages/" + theId , function(data)  {
 
 console.log("the data is :", data);

 let myGarage = new Garage(data);

 let myGarHTML = myGarage.garageHTML()


 document.getElementById('garage-details').innerHTML = myGarHTML

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
 Location: <h3>${this.location}</h3>
 Offers tire service? <h3> ${this.tire_service}</h3>
 Can repair and make and models? <h3>${this.service_any_vehicle}</h3>

 
 
 </div>
`)
}

// fetch to garages to collect array of all $.getJSON -> map into array pf only id's -> only fetch if id is in this array  

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
    var previousId = parseInt($(".js-next").attr("data-id")) - 1;
    $.getJSON("/garages/" + previousId , function(data) {
      $("#garageName").text(data["name"]);
      $("#garageLocation").text(data["location"]);
      $("#garageTire").text(data["tire_service"]);
      $("#garageService").text(data["service_any_vehicle"]);
     
      // re-set the id to current on the link
      $(".js-previous").attr("data-id", data["id"]);
    });
  });
});

function getAppointments(theId){


 
  
 $.getJSON("/garages/" + theId + "/appointments", function(data)  {

 console.log("the data is.. :", data);
  data.forEach(myFunction);
 
  function myFunction (appt){
//    for( let i = 0; i < data.length; i++){

       new Appointment(appt);

}
const htmlAppts= allAppointments.map(function (appt)  {
  return (appt.appointmentHTML())



})
document.getElementById('appointments-list').innerHTML = htmlAppts.join(",")


})
}
const allAppointments  = []

class Appointment {
 constructor(appt){

 this.id = appt.id
 this.date = appt.date
 this.description = appt.description
 this.garage_id = appt.garage_id
 this.customer_id = appt.customer_id
 allAppointments.push(this)
 
}
}

Appointment.prototype.appointmentHTML = function(){

return (`
 <ul><li style="color:red">${this.date}</li>
</ul>
`)
}





