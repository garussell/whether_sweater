# Whether, Sweater - Project README
# Back-End API

## Table of Contents

1. [Learning Goals](#learning-goals)
2. [Project Description](#project-description)
3. [Setup](#setup)
4. [Data Structure](#data-structure)
5. [End Points](#end-points)
6. [Suggestions for Use](#suggestions-for-use)
7. [Contributors](#contributors)

## Learning Goals
- Practice geolocation services and integration of multiple APIs as a microservice.
- Practice permission using `bcrypt` with password_digest.
- Utilize ErrorSerializer and JSONAPI formatting.
- Impliment `caching` to speed up process when search query includes location / city & state or latitude & longitude.


## Project Description
**Whether, Sweater** is a back-end project that exposes two API endpoints to make data available from [MapQuest API](https://developer.mapquest.com/documentation/geocoding-api/) and [Weather API](https://www.weatherapi.com/).  It allows the front-end to obtain JSON data that contains whether information for a city, where the city and state are passed in the URL boday as a location param.  

## Setup
- Ruby 3.2.2
- Rails 7.0.7.2
- [Faraday](https://github.com/lostisland/faraday) gem to interact with APIs
- [JSONAPI Serializer](https://github.com/jsonapi-serializer/jsonapi-serializer) gem for formatting JSON responses
- [SimpleCov](https://github.com/simplecov-ruby/simplecov) gem for code coverage tracking
- [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers) gem for testing assertions
- [VCR](https://github.com/vcr/vcr) / [Webmock](https://github.com/bblimke/webmock) to stub HTTP requests in tests to simulate API interactions

## Data Structure
- `data` attribute contains `id=null`, `type="forecast"`, and `attributes`.
- `attributes` is an object that contains weather information: `current_weather`
- `current_weather` holds the weather data as `last_updated` (format "2023-04-07 16:30"), `temperature` (float / Fahrenheit), `feels_like` (float / Fahrenheit), `humidity` (int or float), `uvi` (int or float), `visibility` (int or float), `condition` (string), `icon` (png string for current weather condition) 
- `daily_weather` holds array of next 5 days of weather data: `date` (format "2023-04-07"), `sunrise` (format "07:13 AM"), `sunset` (format "08:07 PM"), `max_temp` (float / Fahrenheit), `min_temp` (float / Fahrenheit), `condition` (string), `icon` (png string for weather condition)
- `hourly_weather` holds array of 24 hours data for current day‘‘‘: `time` (format "22:00"), `temperature` (float / Fahrenheit), `conditions` (string / per hour), `icon` (png string for weather condition per hour)

## End-Points
- Get weather for a city: `GET /api/v0/forecast?location=cincinatti,oh` - data can be sent as params
- User Registration: `POST /api/v0/users` - raw data needs to be sent in the body of the request
- Login: `POST /api/v0/sessions` - raw data needs to be sent in the body of the request
- Create Roadtrip: `POST /api/v0/road_trip` - raw data needs to be sent in the body of the request

## Suggestions for Use

1. Clone the application: Create a clone of this repository
2. Obtain an API key: Sign-up with email, password, and confirmation password to receive a response with your unique API key (currently no limits)


## Contributors
- [Allen Russell](allenrusselldev@gmail.com) - GitHub: [@garussell](https://github.com/garussell)



