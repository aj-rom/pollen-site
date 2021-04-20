# Pollen Site

This is the application that will run our main site. Built on the latest version of rails.


## Contributing

To get started clone this repository to your machine.

Navigate to the directory you just cloned and run `$ bundle install`

To seed the database with some fake data as of right now, run `$ rake db:seed` which will set up our database.

Next to get our application up and running, run `rails s`

Then go ahead and navigate to the server webpage [here](localhost:3000). 

All changes to the views and controllers are updated automatically so you can view your changes live. 
If for some reason changes seem to not be appearing, try simply restarting your server by running:

* `CTRL + C` to close your server
* `rails s` to restart it

If you run into any dependency or platform issues, switch to linux or macintosh as these have native support over windows (crazy), and please open a new issue stating the dependency error.