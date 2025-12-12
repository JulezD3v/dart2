void main(){
  WeatherType todaysWeather = WeatherType.Sunny;
  WeatherType yesterdaysWeather = WeatherType.Clear;
  WeatherType tomsweather = WeatherType.Rainy;

  print(todaysWeather);
  print(yesterdaysWeather.name);
  print(tomsweather.name.toString());
}

enum WeatherType{
  Clear,
  Rainy,
  Sunny
}

// Back to basics coz 