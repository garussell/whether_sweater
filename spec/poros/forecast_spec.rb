require 'rails_helper'

RSpec.describe "Forecast", type: :poros do
  describe "initialize" do
    
    it "receives data from open weather that includes current, daily, and hourly weather" do
      raw_data = {:location=>{:name=>"Denver", :region=>"Colorado", :country=>"United States of America", :lat=>39.74, :lon=>-104.98, :tz_id=>"America/Denver", :localtime_epoch=>1695492195, :localtime=>"2023-09-23 12:03"},
      :current=>
       {:last_updated_epoch=>1695492000,
        :last_updated=>"2023-09-23 12:00",
        :temp_c=>20.0,
        :temp_f=>68.0,
        :is_day=>1,
        :condition=>{:text=>"Sunny", :icon=>"//cdn.weatherapi.com/weather/64x64/day/113.png", :code=>1000},
        :wind_mph=>24.2,
        :wind_kph=>38.9,
        :wind_degree=>250,
        :wind_dir=>"WSW",
        :pressure_mb=>1018.0,
        :pressure_in=>30.05,
        :precip_mm=>0.0,
        :precip_in=>0.0,
        :humidity=>14,
        :cloud=>0,
        :feelslike_c=>20.0,
        :feelslike_f=>68.0,
        :vis_km=>16.0,
        :vis_miles=>9.0,
        :uv=>5.0,
        :gust_mph=>6.7,
        :gust_kph=>10.8},
      :forecast=>
       {:forecastday=>
         [{:date=>"2023-09-23",
           :date_epoch=>1695427200,
           :day=>
            {:maxtemp_c=>24.9,
             :maxtemp_f=>76.8,
             :mintemp_c=>9.4,
             :mintemp_f=>48.9,
             :avgtemp_c=>16.8,
             :avgtemp_f=>62.2,
             :maxwind_mph=>11.9,
             :maxwind_kph=>19.1,
             :totalprecip_mm=>0.0,
             :totalprecip_in=>0.0,
             :totalsnow_cm=>0.0,
             :avgvis_km=>10.0,
             :avgvis_miles=>6.0,
             :avghumidity=>32.0,
             :daily_will_it_rain=>0,
             :daily_chance_of_rain=>0,
             :daily_will_it_snow=>0,
             :daily_chance_of_snow=>0,
             :condition=>{:text=>"Overcast", :icon=>"//cdn.weatherapi.com/weather/64x64/day/122.png", :code=>1009},
             :uv=>4.0},
           :astro=>{:sunrise=>"06:48 AM", :sunset=>"06:56 PM", :moonrise=>"03:41 PM", :moonset=>"No moonset", :moon_phase=>"Waxing Gibbous", :moon_illumination=>"52", :is_moon_up=>1, :is_sun_up=>1},
           :hour=>
            [{:time_epoch=>1695448800,
              :time=>"2023-09-23 00:00",
              :temp_c=>16.1,
              :temp_f=>61.0,
              :is_day=>0,
              :condition=>{:text=>"Clear", :icon=>"//cdn.weatherapi.com/weather/64x64/night/113.png", :code=>1000},
              :wind_mph=>3.6,
              :wind_kph=>5.8,
              :wind_degree=>222,
              :wind_dir=>"SW",
              :pressure_mb=>1010.0,
              :pressure_in=>29.82,
              :precip_mm=>0.0,
              :precip_in=>0.0,
              :humidity=>33,
              :cloud=>0,
              :feelslike_c=>16.1,
              :feelslike_f=>61.0,
              :windchill_c=>16.1,
              :windchill_f=>61.0,
              :heatindex_c=>16.1,
              :heatindex_f=>61.0,
              :dewpoint_c=>-0.0,
              :dewpoint_f=>32.0,
              :will_it_rain=>0,
              :chance_of_rain=>0,
              :will_it_snow=>0,
              :chance_of_snow=>0,
              :vis_km=>10.0,
              :vis_miles=>6.0,
              :gust_mph=>6.3,
              :gust_kph=>10.2,
              :uv=>1.0}
            ]}]}}
 
      forecast = Forecast.new(raw_data)
      expect(forecast).to be_a(Forecast)
      expect(forecast.current_weather).to be_a(Hash)
      expect(forecast.daily_weather).to be_a(Array)
      expect(forecast.hourly_weather).to be_a(Array)
    end
  end
end