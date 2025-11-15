import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get%20weather%20cubit/get_weather_state.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(this.weatherService) : super(WeatherLoading());
  WeatherService weatherService;

  getWeather({required String cityname}) async {
    try {
      emit(WeatherLoading());
      await weatherService.getCurrentWeather(city: cityname);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
