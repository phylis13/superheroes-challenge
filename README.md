## Superheroes API
Description

The Superheroes API is a Ruby on Rails backend API that provides information on superheroes. It uses three database tables to store information on superheroes, their powers, and their archenemies.

## Requirements

This project requires the following:

Rails API backend
Three resources (three DB tables)

## Project Setup

To set up the project, follow these steps -make a a repo on your github account

    git clone the repo on your terminal

-Install the gem and add to the application's Gemfile by executing:

-$ bundle add UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

=If bundler is not being used to manage dependencies, install the gem by executing:

-$ gem install UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG -Set up the database by running rails db:migrate -seeding by db:seed -start the server bt running raiils s
## Usage
The Superheroes API provides endpoints for accessing information on superheroes, powers, and archenemies. Here are some examples of how to use the API:
Get a list of all superheroes
# How TO Running the Heroes API
## install the dependencies:

bundle install

Set up the database:

bash

rails db:create
rails db:migrate
rails db:seed # if you want to generate your own seed data

# Start the server:

    rails server

    You can now access the API by going to http://localhost:3000.

API Routes
GET /heroes

Returns a list of all heroes in the following JSON format:

css

[  {    "id": 1,    "name": "Kamala Khan",    "super_name": "Ms. Marvel"  },  {    "id": 2,    "name": "Doreen Green",    "super_name": "Squirrel Girl"  },  {    "id": 3,    "name": "Gwen Stacy",    "super_name": "Spider-Gwen"  }]

GET /heroes/:id

Returns a single hero with the specified ID in the following JSON format:

json

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}

If the hero is not found, returns the following JSON with the appropriate HTTP status code:

json

{
  "error": "Hero not found"
}

GET /powers

Returns a list of all powers in the following JSON format:

css

[  {    "id": 1,    "name": "super strength",    "description": "gives the wielder super-human strengths"  },  {    "id": 2,    "name": "flight",    "description": "gives the wielder the ability to fly through the skies at supersonic speed"  }]

GET /powers/:id

Returns a single power with the specified ID in the following JSON format:

json

{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}

If the power is not found, returns the following JSON with the appropriate HTTP status code:

json

{
  "error": "Power not found"
}

PATCH /powers/:id

Updates the description of the power with the specified ID. Accepts an object with the following properties in the body of the request:

json

{
  "description": "Updated description"
}

If the power is found and updated successfully, returns the following JSON with the updated information:

json

{
  "id": 1,
  "name": "super strength",
}





## Contributing

Contributing If you would like to contribute to this project, feel free to submit a pull request.
## License

The gem is available as open source under the terms of the MIT License.
## Authors

phylis njeri

