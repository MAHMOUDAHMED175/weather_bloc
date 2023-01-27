
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}
class WeatherGetDataSuccessfulState extends WeatherState{}
class WeatherGetDataErrorState extends WeatherState{}