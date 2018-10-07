# README

Steps necessary to get the application up and running.

Things you may want to cover:

* Ruby version - **2.3.1**, Rails Version - **5.1.6**

* System dependencies
  * **run:** `bundle install` 
  * **Prerequisite:** `sudo gem install foreman` or `gem install foremen`(To run rails server, worker process(_using delayed job_) & cron(_automically fetchs feeds_) in one go.

* Database creation
  * **Migration:** `rake db:migrate` to setup schema.
  * **Seed:** `rake db:seed` populate the database tables. 
  
* To run the application paste in below command into your terminal within the app repo.
```ruby
foreman start
```

#### _Once rails server is started type in [`localhost:3000`](http://localhost:3000) into your browser._
