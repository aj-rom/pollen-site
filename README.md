# Pollen Site

This is the application that will run our main site. Built on the latest version of rails.

Please do not commit anything to this repository until I finish my project review, thus ensuring that only I, A.J. Romaniello have worked on this. Contributions may begin after my project review.


## Contributing

To get started clone this repository to your machine.

Navigate to the directory you just cloned and run `$ bundle install`

Ensure that you have a PostgreSQL server up and running and fill out the related information within the `.env` file.

Once you have PostgreSQL setup and running, run `$ rake db:setup`

To seed the database with some fake data as of right now, run `$ rake db:seed` which will set up our database.

Next to get our application up and running, run `rails s`

Then go ahead and navigate to the server webpage [here](https://127.0.0.1:3000). 
* Logging In
    * Admin user is defaulted to `dev@admin.com` password is `password`
    * Normal user is defaulted to `user@default.com` password is the same as above.
    
All changes to the views and controllers are updated automatically so you can view your changes live. 
If for some reason changes seem to not be appearing, try simply restarting your server by running:

* `CTRL + C` to close your server
* `rails s` to restart it

If you run into any dependency or platform issues, switch to linux or macintosh as these have native support over windows (crazy), and please open a new issue stating the dependency error.
