import 'dart:convert';
import '../models/coin_model.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static String baseURL = 'https://coinranking1.p.rapidapi.com';

  static const Map<String, String> headers = {
    'X-RapidAPI-Key': 'your-rapidapi-key',
    'X-RapidAPI-Host': 'your-rapidapi-host'
  };

  static Future<List<CoinModel>> getCoins({
    int limit = 25,
    String orderBy = 'marketCap',
    String scopeId = 'marketCap',
    String query = '',
  }) async {
    List<CoinModel> coinList = [];

    var url = Uri.parse(
        "$baseURL/coins?limit=$limit&orderBy=$orderBy&scopeId=$scopeId&search=$query");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(CoinModel.fromJson(coin));
      }
    }
    return coinList;
  }

  static Future<List<CoinModel>> getGainerCoins(
      {int limit = 5,
      String orderBy = 'change',
      String scopeId = 'marketCap'}) async {
    List<CoinModel> coinList = [];

    var url = Uri.parse(
        "$baseURL/coins?limit=$limit&orderBy=$orderBy&scopeId=$scopeId");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(CoinModel.fromJson(coin));
      }
    }
    return coinList;
  }
}
