
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/component/network/remote/dio_helper.dart';
import 'package:weather_bloc/layout/weather_state.dart';
import 'package:weather_bloc/models/weather_model.dart';


class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  static WeatherCubit get(context) => BlocProvider.of(context);

//// https://api.weatherapi.com/v1/forecast.json?key=3677bed892474b30b7a122242220806&q=sena&days=7
// https://api.weatherapi.com/v1
// /forecast.json?
// key=3677bed892474b30b7a122242220806&q=cairo&days=5

  WeatherModel? weatherModel;
// http://api.weatherapi.com/v1/forecast.json?key=3677bed892474b30b7a122242220806&q=sena&days=7

  void getWeatherData({required String city_Name}) {
    DioHelper.getWeatherData(
        url: '/forecast.json',
        data: {
          "key": "3677bed892474b30b7a122242220806",
          "q": "${city_Name}",
          "days": "3",
        }
    ).then((value) {
      weatherModel = WeatherModel.fromJson(value.data);
      print(value.data.toString());
      print(value.data);
      print(value.data['location']['country']);
      emit(WeatherGetDataSuccessfulState());
    }).catchError((error) {
      print(error);
      print('dddddddd');
      emit(WeatherGetDataErrorState());
    });
  }

  //
  // String baseUrl = 'http://api.weatherapi.com/v1';
  //
  // String apiKey = '3677bed892474b30b7a122242220806';
  //
  // Future<WeatherModel?> getWeather() async {
  //   Uri url =
  //   Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=Cairo&days=7');
  //   http.Response response = await http.get(url);
  //
  //   if (response.statusCode == 400) {
  //     var data = jsonDecode(response.body);
  //     throw Exception(data['error']['message']);
  //   }
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //
  //
  //   WeatherModel weatherModel = WeatherModel.fromJson(data);
  //   print(data['location']['country']);
  //
  // }
  //
  //










  String getImage() {
    if (weatherModel!.current!.condition!.text == 'Sunny' || weatherModel!.current!.condition!.text == 'Clear' ||  weatherModel!.current!.condition!.text == 'partly cloudy') {
      return 'assets/images/clear.png';
    } else if (

    weatherModel?.current!.condition!.text == 'Blizzard' ||  weatherModel?.current!.condition!.text == 'Patchy snow possible'  ||  weatherModel?.current!.condition!.text == 'Patchy sleet possible' || weatherModel?.current!.condition!.text == 'Patchy freezing drizzle possible' || weatherModel?.current!.condition!.text == 'Blowing snow') {
      return 'assets/images/snow.png';
    } else if (weatherModel?.current!.condition!.text == 'Freezing fog' || weatherModel?.current!.condition!.text == 'Fog' ||  weatherModel?.current!.condition!.text == 'Heavy Cloud' || weatherModel?.current!.condition!.text == 'Mist' || weatherModel?.current!.condition!.text == 'Fog' || weatherModel?.current!.condition!.text == 'Heavy rain') {
      return 'assets/images/cloudy.png';
    } else if (weatherModel?.current!.condition!.text == 'Patchy rain possible' ||
        weatherModel?.current!.condition!.text == 'Heavy Rain' ||
        weatherModel?.current!.condition!.text == 'Showers	') {
      return 'assets/images/rainy.png';
    } else if (weatherModel?.current!.condition!.text == 'Thundery outbreaks possible' || weatherModel?.current!.condition!.text == 'Moderate or heavy snow with thunder' || weatherModel?.current!.condition!.text == 'Patchy light snow with thunder'|| weatherModel?.current!.condition!.text == 'Moderate or heavy rain with thunder' || weatherModel?.current!.condition!.text == 'Patchy light rain with thunder' ) {
      return 'assets/images/thunderstorm.png';
    } else {
      return 'assets/images/cloudy.png';
    }
  }
  MaterialColor getThemeColor() {
    if (weatherModel?.current!.condition!.text == 'Sunny' || weatherModel?.current!.condition!.text == 'Clear' ||  weatherModel?.current!.condition!.text == 'partly cloudy') {
      return Colors.orange;
    } else if (

    weatherModel?.current!.condition!.text == 'Blizzard' ||  weatherModel?.current!.condition!.text == 'Patchy snow possible'  ||  weatherModel?.current!.condition!.text == 'Patchy sleet possible' || weatherModel?.current!.condition!.text == 'Patchy freezing drizzle possible' || weatherModel?.current!.condition!.text == 'Blowing snow') {
      return Colors.blue;
    } else if (weatherModel?.current!.condition!.text == 'Freezing fog' || weatherModel?.current!.condition!.text == 'Fog' ||  weatherModel?.current!.condition!.text == 'Heavy Cloud' || weatherModel?.current!.condition!.text == 'Mist' || weatherModel?.current!.condition!.text == 'Fog') {
      return Colors.blueGrey;
    } else if (weatherModel?.current!.condition!.text == 'Patchy rain possible' ||
        weatherModel?.current!.condition!.text == 'Heavy Rain' ||
        weatherModel?.current!.condition!.text == 'Overcast' ||
        weatherModel?.current!.condition!.text == 'Showers') {
      return Colors.blue;
    } else if (weatherModel?.current!.condition!.text == 'Thundery outbreaks possible' || weatherModel?.current!.condition!.text == 'Moderate or heavy snow with thunder' || weatherModel?.current!.condition!.text == 'Patchy light snow with thunder'|| weatherModel?.current!.condition!.text == 'Moderate or heavy rain with thunder' || weatherModel?.current!.condition!.text == 'Patchy light rain with thunder' ) {
      return Colors.deepPurple;
    } else {
      return Colors.orange;
    }
  }








}
