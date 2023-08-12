part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}
class Weatherloading extends WeatherState {}
class Weathersucess extends WeatherState {}
class Weatherfailure extends WeatherState {
  String error;

  Weatherfailure({required this.error});
}
