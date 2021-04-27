# Pollen Site

This is the application that will run our main site. Built on the latest version of rails.

Please do not commit anything to this repository until I finish my project review, thus ensuring that only I, A.J. Romaniello have worked on this. Contributions may begin after my project review.

## Requirments
Listed below are all of the pre-requisites you will need to be able to get set up and started.

### Operating System

So far the following operating systems are supported:
* **Macintosh**
* **Ubuntu**
* **Linux (Linux Mint, etc)**
* **Windows** via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or [Docker](https://www.docker.com/)

### Ruby Version ( 2.6.1 )
You must have a distribution of Ruby installed onto your machine. I prefer using a *Ruby Version Manager* such as [RVM](https://rvm.io)
### PostgreSQL

Download the latest version of [PostgreSQL](https://www.postgresql.org/download/)

#### Setup

Ensure that you create your default postgres account with a password to rememvber. 

Alternativley you can easily create users by using pgMyadmin4, but a user is necessary to access and manipulate the database.

#### pgMyAdmin4 (Optional)
A good tool for database viewing and managment for PostgreServers.
* [Docker Container](https://www.pgadmin.org/download/pgadmin-4-container/)
* [Mac Download](https://www.pgadmin.org/download/pgadmin-4-macos/)
* [Others](https://www.pgadmin.org/download/)

### Set Up .env
Included in your clone should be a file called `dev.env`. 

Go ahead and create a new file `.env` and copy and paste the information from the `dev.env` file

#### O-Auth
You must fill out related fields for o-auth methods within the .env file as well as updating the `dev.env` for any strategies added.

## Contributing

To get started clone this repository to your machine.

Navigate to the directory you just cloned and run `$ bundle install`

Ensure that you have a PostgreSQL server up and running and fill out the related information within the `.env` file.

Once you have PostgreSQL setup and running, run `$ rake db:setup`

To seed the database with some fake data as of right now, run `$ rake db:seed` which will seed our database.

* How To Login
    * Admin user is defaulted to `dev@admin.com` password is `password`
    * Normal user is defaulted to `user@default.com` password is the same as above.
   
Next to get our application up and running, run `rails s`

Then go ahead and navigate to the server webpage [here](https://127.0.0.1:3000). 
    
All changes to the views and controllers are updated automatically so you can view your changes live. 
If for some reason changes seem to not be appearing, try simply restarting your server by running:

* `CTRL + C` to close your server
* `rails s` to restart it

If you run into any dependency or platform issues, switch to linux or macintosh as these have native support over windows (crazy), and please open a new issue stating the dependency error.
