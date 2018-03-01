# Travel Time App


## The Problem

- Need to predict arrival time of negotiators at each location with the starting
  point being the Barbican office.

# Dependencies

## Development
```
gem 'bootstrap-sass', '~> 3.3.7'
gem 'dotenv-rails', groups: [:development, :test]
gem 'faraday'
gem 'geocoder'
```

## Testing
```
gem 'selenium-webdriver', '~> 3.9'
gem 'capybara'
gem 'database_cleaner'
```


## Installation
```
$git clone https://github.com/takumab/travel_time_app
$cd travel_time_app
$bundle install
$bin/rails db:create
$bin/rake db:migrate
$bin/rails s
```

## Setting up API Keys

1. Google Maps API Key: Go to this link [https://developers.google.com/maps/documentation/javascript/get-api-key][Google Maps] to set up a key.
2. I've incorporated the [https://github.com/bkeepers/dotenv][dotenv-rails] gem in order to store my API key.
3. 'bundle install'
4. Create .env file and place keys in this file and then assign it to ENV['GOOLGE_MAPS_KEY']
5. Get [https://citymapper.3scale.net/docs][City Mapper API Key] and set it to an environment variable

## Usage
The root page consists of the form. Just enter your origin address and destination address and hit submit button. 
