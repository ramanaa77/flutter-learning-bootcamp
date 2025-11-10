import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';

final apiKey = dotenv.env['API_KEY'];
final coinURL = dotenv.env['BASE_URL'];

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'bitcoin',
  'ethereum',
  'litecoin',
];
final String cryptoIds = cryptoList.join(',');

class CoinData {
  String selectedCurrency;

  CoinData({required this.selectedCurrency});

  Future getCoinData() async {
    final url = Uri.parse(
        '$coinURL?ids=$cryptoIds&vs_currencies=$selectedCurrency&x_cg_demo_api_key=$apiKey');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
