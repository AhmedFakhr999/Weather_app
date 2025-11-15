import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search area'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              weatherModel =
                  await WeatherService(Dio()).getCurrentWeather(city: value);
              Navigator.pop(context);
            },
            autofocus: false,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                labelText: 'Search',
                suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.search_outlined)),
                hintText: 'Enter a city to search for',
                hintStyle: TextStyle(color: Color(0x550000D7)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xEFE8D901),
                    ),
                    borderRadius: BorderRadius.circular(1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
