import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<String> fetchQuote() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 3));

  // Generate a random quote
  List<String> quotes = [
    "Be yourself; everyone else is already taken.",
    "You only live once, but if you do it right, once is enough.",
    "In three words I can sum up everything I've learned about life: it goes on.",
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

//Answer for Exercise 2 
Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully.');
  } else {
    print('Failed to download file. Status code: ${response.statusCode}');
  }
}

//Answer for Exercise 3 
Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));

  return ['new1', 'new2', 'new3', 'new4'];
}
//Answer for Exercise 4 
Future<Map<String, dynamic>> fetchWeatherData(String apiKey) async {
  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=New%20York&appid=$apiKey';

  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  print('Fetching the randomquote...');
  String quote = await fetchQuote();
  print('Quote: $quote');

  //Answer for Exercise 2 
  String url = 'https://example.com/file.pdf';
  String savePath = 'onedrive/Downloads/file.pdf';

  print('Downloading file...');
  await downloadFile(url, savePath);

  //Answer for Exercise 3 
  print('Loading data from database...');
  List<String> data = await loadDataFromDatabase();
  print('Data: $data');

  //Answer for Exercise 4 
  String apiKey = 'YOUR_API_KEY';

  try {
    print('Fetching weather data...');
    Map<String, dynamic> weatherData = await fetchWeatherData(apiKey);

    var temperature = weatherData['main']['temp'];
    var weatherConditions = weatherData['weather'][0]['description'];

    print('Temperature: $temperature');
    print('Weather Conditions: $weatherConditions');
  } catch (e) {
    print('Error: $e');
  }
}