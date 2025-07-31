#!/usr/bin/env bash
#!/bin/bash

API_KEY="986f452fdac12deaa2b2a31a1eeb05b5"
CITY="Toluca, MX"
while true; do
  response=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$API_KEY&units=metric")
  temp=$(echo $response | jq '.main.temp | floor')
  desc=$(echo $response | jq -r '.weather[0].description')
  echo "weather_temp=${temp}°C"
  echo "weather_desc=$desc"
  sleep 900
done
