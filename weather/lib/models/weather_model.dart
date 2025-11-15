import 'package:flutter/foundation.dart';

class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;
  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.weatherCondition});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        cityName: json['location']['name'],
        date: json['current']['last_update'],
        maxTemp: json['forecase']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecase']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecase']['forecastday'][0]['day']['condition'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
