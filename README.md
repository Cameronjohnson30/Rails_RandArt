###### RandArt

#### By _**Cameron Johnson**_

## Technologies Used

* _Ruby_ 
* _Rails_ 
* _RSPEC_
* _Capybara_
* _Shoulda-Matchers_
* _Pry_
* _Postgres_
* _SQL_
* _Devise_
* _CSS_ 
* _JavaScript_
* _Markdown_

## Description
* _An application to let users build a library of ideas to be able to get a random art idea, it was constructed with the guidance of Epicodus._

## Setup/Installation
* _Go to https://github.com/Cameronjohnson30/RandArt.git_
* _Clone this repository to your local machine by running the following command_
* _git clone https://github.com/Cameronjohnson30/RandArt.git_
* _Navigate to root folder and open directory in your terminal_
* _To run this program, you must have Ruby 2.6.5 and Rails 5.2.0 installed on your machine. If you do not, you can follow these instructions: [Mac](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-mac) or [PC](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-windows)._
* _Once you have the project downloaded, navigate to the root of the project in your terminal and type "bundle install"._
* _You will also need Postgres installed on your machine. If you do not, you can follow these [instructions.](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-postgres)._
* _In the terminal at the root of the project, type "postgres" to make sure Postgres is running._
NOTE: if you are running this application on a Windows machine you will have to adjust the database access settings. To do so, go to the file located at config/database.yml and add you username and password specifications to sections development:, test:, and production: like so:
*  _Then, in a separate terminal type:_
*  _rake db:create - this will create a new database._
*  _rake db:migrate - this will upload the schema design to the database._
*  _rake db:test:prepare - this will design the test database to mirror the development database._
*  _rake db:seed - this with auto-populate the database._
*  _rails s - this will run the rails server so the project can be viewed in the browser.(keep this terminal separate from your working terminal.)_

##### The application should launch in your browser and if not
* _Open your browser and go to http://localhost:3000/_

##### Live Website can be seen at
* _http://randart.art_

## Known Bugs
* _There are no known bugs at this time_

## License
_This code utilizes a GPL License. If you have any issues/find bugs. Feel free to report them to me at here or contribute a fix to the code. Thanks! Copyright (c) 2022 Cameron Johnson_
