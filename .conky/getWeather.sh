#!/bin/bash

echo $(curl --silent 'http://weather.yahooapis.com/forecastrss?w=12760842' | grep -A1 "Current Conditions" | sed -n 's|[A-Za-z]*, \([0-9]*\) F<.*|\1°F|p')
