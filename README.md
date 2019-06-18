## Student Distribution API

This is the API used by the Student-Distribution frontend app, which you
can find here https://github.com/iorme1/student-distribution-frontend

## Features

This API allows for the following:
-Account creation
-Saving Client-side state
-Retrieving Client-side state

## Tech
Ruby 2.4
Rails API 5.2
PostgreSQL
JWT for authentication 

## Setup Instructions

1) Fork/Clone this repository
2) cd into root folder

For steps 3 through 6, run these commands in the terminal.

3) bundle install
4) rake db:create
5) rake db:migrate
6) bundle exec figaro install

After step 6, create a secret inside config/application.yml
with "AUTH_SECRET" as the key.

Example:  AUTH_SECRET: 'your-secret-key-here'

Finally, make sure to run this rails app on a different port from the
student-distribution frontend app. I typically have localhost:3000 for
the frontend and localhost:3001 for the backend. For rails, simply
type "rails s -p 3001" in the terminal to start up the backend on port 3001.

That's it!
