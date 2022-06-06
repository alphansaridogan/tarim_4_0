
class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? clouds;
  List? iconList;
  String? icon;
  String? wind_kmh;
  String? durum;

Weather({
  this.cityName,
  this.temp,
  this.wind,
  this.humidity,
  this.feels_like,
  this.clouds,
  this.iconList,
  this.icon,
  this.wind_kmh,
  this.durum,
});
  Weather.fromJson(Map<String, dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"]*3.6;
    humidity = json["main"]["humidity"];
    feels_like= json["main"]["feels_like"];
    clouds = json["clouds"]["all"];
    iconList = json["weather"];
    durum =json["weather"][0]["description"].toString();
    icon = json["weather"][0]["icon"].toString();
    wind_kmh = wind!.toStringAsFixed(2);


  }

}
