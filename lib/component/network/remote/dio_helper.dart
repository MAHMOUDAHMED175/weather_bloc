




import 'package:dio/dio.dart';

//// https://api.weatherapi.com/v1/forecast.json?key=3677bed892474b30b7a122242220806&q=sena&days=7

class DioHelper{
  static late Dio dio;
  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: 'http://api.weatherapi.com/v1',
        receiveDataWhenStatusError: true,
      ),);
  }
  //  /forecast.json
  static Future<Response> getWeatherData({
    required String url,
    required Map<String,dynamic> data,
})async{
   return await dio.get(
    url,
    queryParameters: data,
  );
  }

}