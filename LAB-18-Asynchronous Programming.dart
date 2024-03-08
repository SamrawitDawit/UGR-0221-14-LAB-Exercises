import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  String apiKey = 'YOUR_API_KEY'; 
  String city = 'Addis Ababa';

  String apiUrl = 'https://api.example.com/weather?city=$city&appid=$apiKey';

  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    double temperature = jsonData['main']['temp'];
    String weatherConditions = jsonData['weather'][0]['description'];

    print('City: $city');
    print('Temperature: $temperature °C');
    print('Weather Conditions: $weatherConditions');
  } else {
    print('Error fetching weather data: ${response.statusCode}');
  }
}

void main() async {
  await fetchWeatherData();
}
