import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:weather/services/weather_service.dart';
import 'package:weather/views/noweatherbody.dart';
import 'package:weather/views/search_view.dart';
import 'package:weather/views/weather_info_body.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(WeatherService(Dio())),
      child: MaterialApp(
          home: weatherModel == null
              ? const NoweatherBoyd()
              : WeatherInfoBody() // this widget will be found in the view folder ,
          ),
    );
  }
}
