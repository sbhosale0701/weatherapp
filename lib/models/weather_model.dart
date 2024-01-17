class weather {
  final String cityName;
  final double temperature;
  final String mainCondition;

  weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory weather.fromJson(Map<String, dynamic> json) {
    return weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
