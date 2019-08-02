# Top Gear Tech  - Shop Management App with JavaScript built in.

	Welcome to your new gem ,Top Gear Tech App with JavaScript, created by Burak KOCAK.

	In this directory, you'll find the files that will help you run the app.


	## Installation
Step #1	In your terminal type in

```
	git clone git@github.com:burakkocak884/top-gear-tech.git


```

to install.
 Then type in 

 "git branch -a"
 in your terminal to see what branch you are at. 
  In order to use the app with Javascript feature, the branch needs to be switch to "top_gear_tech_javascript". You can achieve that by typing "git branch [top_gear_tech_javascript]" in your terminal. 


Step #2 In your terminal
run 


```
rails db:migrate
```

in order to create a database with A User, Garages, Appointments, Customers, and Vehicles tables.


Step #3(optional)
 In your terminal type in 
In order to insert the data provided in db/seed.db file, type in

 ```
 rake db:seed
 ```

  in your terminal. 


 





	## Usage

Upon running 'rails server'('rails s' is a shorter version) in your terminal(assuming that rails is installed in you system), open your browser, and insert "http://localhost:3000" (the port number(3000) can be different depends on your operating system). Your terminal will display post number once "rails" is running properly. Once you insert "http://localhost:3000" into browser's url box, you will be presented a welcome message,an options( "log in", "sign up", or "log in via GitHub account"). Next step depends on you selection. The app will guide you to diffirent pages. You can sign up to create a user name or log in with an existing user name. Note that, A Valid Email address/Username/Password when signing up and non-existing username/email when logging in are required. Since the app first relays on User Authentication, Email/password is validated. Once logged in, you can add your garage(s) in database. Creating an appointment associated with a customer and vehicle would be next step.  There will be options available when desire to update and/or delete a garage/appointment/customer/vehicle.
In order to user Javascript feature to create a garage, go to url: "/garages/new" manually. Once a new graage is created, you will be back in "/garages" path. "let's pull the data in different way" button is where you get most of JAvaScript feature. By clicking that. you can see different pages without refereshing  browser. It is JAvaScript Magic. You are good to go. 
Have fun managing you rental properties!!!


## Development



After checking out the repo,  You can run `rails server` in terminal to experience the app on a browser.



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/burakkocak884/top-gear-tech.git. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Reantal Property Management’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/burakkocak884/top-gear-tech.git/blob/master/CODE_OF_CONDUCT.md).










# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
