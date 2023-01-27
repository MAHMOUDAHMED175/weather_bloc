

class WeatherModel {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeatherModel({this.location, this.current, this.forecast});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    current =
    json['current'] != null ? new Current.fromJson(json['current']) : null;
    forecast = json['forecast'] != null
        ? new Forecast.fromJson(json['forecast'])
        : null;
  }
}

class Location {
  String? name;
  String? country;
  Location(
      {this.name,
        this.country,
         });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
  }

}

class Current {
  double? tempC;
  double? tempF;
  Condition? condition;

  Current(
      {
        this.tempC,
        this.tempF,
        this.condition,
       });

  Current.fromJson(Map<String, dynamic> json) {
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
  }

}

class Condition {
  String? text;
  String? icon;

  Condition({this.text, this.icon, });

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
  }

}

class Forecast {
  List<Forecastday>? forecastday;

  Forecast({this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(Forecastday.fromJson(v));
      });
    }
  }

}

class Forecastday {
  DateTime? date;
  Day? day;

  Forecastday({this.date, this.day,});

  Forecastday.fromJson(Map<String, dynamic> json) {
    date = DateTime.parse(json['date']);
    day = json['day'] != null ? new Day.fromJson(json['day']) : null;

  }

}

class Day {
  double? maxtempC;
  double? mintempC;

  Condition? condition;

  Day(
      {this.maxtempC,
        this.mintempC,

        this.condition,
        });

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'];
    mintempC = json['mintemp_c'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
  }
}
