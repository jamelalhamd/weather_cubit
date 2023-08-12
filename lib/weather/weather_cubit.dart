import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_bloc/modals/weathermodals.dart';
import 'package:http/http.dart' as http;
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  String? city_name;

  WeatherModal? weatherModal1;

       Future <void> getweather (String city) async {
    emit(Weatherloading());

    String uri='https://api.weatherapi.com/v1/forecast.json?key=34cba36f53ca49108a0205029230908&q=$city&days=1&aqi=no&alerts=no';


    try {
      http.Response response =await http.get(Uri.parse(uri));

      Map<String,dynamic> date=jsonDecode(response.body);

      weatherModal1=WeatherModal.fromJson(date);
      emit(Weathersucess());




    } catch (e) {
    emit(Weatherfailure(error: e.toString()));
    }






  }




}
