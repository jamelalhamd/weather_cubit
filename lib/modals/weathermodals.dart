class WeatherModal {
  String date;
  double tem;
  double MINtem;
  double MAXtem;
  String iconData;
  String state;

  WeatherModal(
      {required this.date,
      required this.tem,
      required this.state,
      required this.MINtem,
      required this.MAXtem,
      required this.iconData});

  factory WeatherModal.fromJson(dynamic map) {
    var apijason = map['forecast']['forecastday'][0]['day'];

    return WeatherModal(
      date: map["location"]["localtime"],
      state: apijason['condition']['text'],
      MINtem: apijason['mintemp_c'],
      tem: apijason['avgtemp_c'],
      iconData: apijason['condition']['icon'],
      MAXtem: apijason['maxtemp_c'],
    );
  }

  @override
  String toString() {
    return 'WeatherModal{date: $date, tem: $tem, MINtem: $MINtem, MAXtem: $MAXtem, iconData: $iconData, state: $state}';
  }
}
