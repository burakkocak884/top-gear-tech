



    $(function(){
        console.log('garages are loading!!!')
       listenForClick()
    });


   function listenForClick(){

             $('button#get-my-garages').on('click', function(event) {
                 event.preventDefault()

                let userId = event["currentTarget"]["dataset"]["id"]
                 getGarages(userId);

            })


           
            $(document).on('click', 'button#garage-data', function(event) {
                 event.preventDefault()
         
                let garageId = event["currentTarget"]["dataset"]["id"]
                 getGarage(garageId);

            })

            
            
            // $('button#nextGarage').on('click', function(event) {
            //      event.preventDefault()
   
            //      let garageIndex = event["currentTarget"]["dataset"]["index"]
            //      nextGarage(garageIndex)

            // })
            //  $('button#previousGarage').on('click', function(event) {
            //      event.preventDefault()

            //     // let garageId = event["currentTarget"]["dataset"]["id"]
            //      previousGarage()
            //     })
           $(document).on('click', 'button#garageAppointments', function(event) {
                 event.preventDefault()
 
                let garageId = event["currentTarget"]["dataset"]["id"]
                 getAppointments(garageId);
            })

            //$(document).on('click', 'a.section', function(event) 
            $(document).on('click', 'button#appointmentDetail',function(event) {

                 event.preventDefault()
                 let appointmentId = event["currentTarget"]["dataset"]["id"]
                 let garageUrl = event["currentTarget"]["baseURI"]
                 appointmentDetails(appointmentId, garageUrl)
            })


            $('#new_garage').on('submit', function(event){
                  event.preventDefault()
                  const values = $(this).serialize()
                  $.post("/garages", values)
                  .done(function(data){

                    const newGarage = new Garage(data) 
                    const newGarageToAdd = newGarage.formatGarageHTML()
                    document.getElementById('garages-list').innerHTML = newGarageToAdd
              })
              
            })
  }

  function getGarages(userId){

        $.getJSON("/garages" , function(data)  {
        
         console.log("the data is :", data);
        data.forEach(myFunction);
        function myFunction (grs){
          new Garage(grs);
        }
        
        
         const htmlGarages = allGarages.map(function (grj)  {
          return (grj.formatGarageHTML())
        })

        
         


         document.getElementById('garage-details').innerHTML = htmlGarages.join(",")
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

    //  function nextGarage(index){
 
    //     $.getJSON("/garages" , function(data)  {
    //     debugger
    //      console.log("the data is :", data);

    //      let myGarage = new Garage(data[index]);

    //      let myGarHTML = myGarage.garageHTML()


    //      document.getElementById('garage-details').innerHTML = myGarHTML

    //     })
    // }
    //  function previousGarage(){

    //     $.getJSON("/garages", function(data)  {
         
    //      console.log("the data is :", data);

    //      let myGarage = new Garage(data);

    //      let myGarHTML = myGarage.garageHTML()


    //      document.getElementById('garage-details').innerHTML = myGarHTML

    //     })
    // }


const allGarages = []


    class Garage {
         constructor(grj){

         this.id = grj.id
         this.name = grj.name
         this.location = grj.location
         this.tire_service = grj.tire_service
         this.service_any_vehicle = grj.service_any_vehicle
         this.user_id = grj.user_id
         allGarages.push(this)
        }
    }



    Garage.prototype.garageHTML = function(){
      return (`
       <div>
      Name of the shop: <h2>${this.name}</h2>
       Location: <h3>${this.location}</h3>
       Offers tire service? <h3> ${this.tire_service}</h3>
       Can repair and make and models? <h3>${this.service_any_vehicle}</h3>
      </div>
      `)
    }

        Garage.prototype.formatGarageHTML = function(){
      return  ( `
        <h2>${this.name}</h2>
      <h3><button id = "garage-data" data-id = "${this.id}"><strong>Details</strong><button id ="garageAppointments" data-id = "${this.id}">Appointments</button><div class ="garageDetail" id = "appointments-list"></div></h3>

    `)
    }


// fetch to garages to collect array of all $.getJSON -> map into array pf only id's -> only fetch if id is in this array  

// $(function () {
//   $(".js-next").on("click", function(e) {
//     e.preventDefault()

//      // var nextIndex = parseInt($(".js-next").attr("data-index")) + 1;
//      // var nextArray = parseInt($(".js-next").attr("data-array"));
//     var currentId = parseInt($(".js-next").attr("data-id")) ;
//     var currentIndex = parseInt($(".js-next").attr("data-currentIndex")) ;
//     var arraySize = parseInt($(".js-next").attr("data-arraySize")) ;
//     var nextIndex = currentIndex + 1
// //  while (currentIndex < arraySize) {
// //  var nextIndex = currentIndex + 1
 
// // }



 







  
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
//     var previousId = parseInt($(".js-next").attr("data-id"));

//     $.getJSON("/garages/" + previousId , function(data) {
//       $("#garageName").text(data["name"]);
//       $("#garageLocation").text(data["location"]);
//       $("#garageTire").text(data["tire_service"]);
//       $("#garageService").text(data["service_any_vehicle"]);
     
//       // re-set the id to current on the link
//       $(".js-previous").attr("data-id", data["id"]);
//     });
//   });
// });





function getAppointments(theId){
    $.getJSON("/garages/" + theId + "/appointments", function(data)  {
      console.log("the data is.. :", data);
      data.sort(function(a, b) {
        a = new Date(a.date);
        b = new Date(b.date);
        return a>b ? -1 : a<b ? 1 : 0;
        });
        data.forEach(myFunction);
        allAppointments.length = data.length
        function myFunction (appt){
          new Appointment(appt);
        }
        

         
        const htmlAppts = allAppointments.map(function (appt)  {
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
 
 <button class ="garageDetail" id = "appointmentDetail"  data-id ="${this.id}"> ${this.date} </button>
 
 


`)
}
 function appointmentDetails(id, url) {
 
 $.getJSON(url + "/appointments/" + id, function(data)  {


  let myAppt = new Appointment(data)
 myAppt.firstName = data.customer.first_name
 myAppt.lastName = data.customer.last_name
 myAppt.email = data.customer.email
 myAppt.balance = data.customer.standing_balance
 myAppt.vehicleYear = data.vehicle.year
 myAppt.vehicleMake= data.vehicle.make
 myAppt.vehicleModel = data.vehicle.model
 myAppt.vehicletag = data.vehicle.license_plate
 myAppt.vehicleMileage= data.vehicle.mileage
 myAppt.vehicleColor = data.vehicle.color





 let theAppt = myAppt.theAppointmentHTML()

  document.getElementById(`appointment-details-${id}`).innerHTML = theAppt




 })
}
Appointment.prototype.theAppointmentHTML = function (){
  
return (`
  
  Description:<h2>${this.description}</h2><br>
  <h1> << Customer Info >> </h1>
   Name: <h2> ${this.firstName} ${this.lastName}</h2>
  
  Email: <h2>${this.email}</h2>
  Standing balance : <h2> $ ${this.balance}</h2>
  <h1> << Vehicle Info >> </h1>
  Year: <h2>${this.vehicleYear}</h2>
  Make: <h2>${this.vehicleMake}</h2>
  Model:<h2>${this.vehicleModel}</h2>
  License Plate: <h2>${this.vehicletag}</h2>
  Current Mileage: <h2>${this.vehicleMileage}</h2>
  Exterior Color: <h2>${this.vehicleColor}</h2>

  `)
}
 






