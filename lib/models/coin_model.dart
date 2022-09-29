class CoinModel {
  final String uuid;
  final String symbol;
  final String name;
  final String? color;
  final String iconUrl;
  final double price;
  final double change;
  final List sparkLine;
  final double btcPrice;
  final int rank;
  final double volume;
  final double marketCap;

  CoinModel({
    required this.uuid,
    required this.symbol,
    required this.name,
    required this.color,
    required this.iconUrl,
    required this.price,
    required this.change,
    required this.sparkLine,
    required this.btcPrice,
    required this.rank,
    required this.volume,
    required this.marketCap,
  });

  factory CoinModel.fromJson(Map<String, dynamic> parsedJson) {
    return CoinModel(
      uuid: parsedJson['uuid'],
      symbol: parsedJson['symbol'],
      name: parsedJson['name'],
      color: parsedJson['color'],
      iconUrl: parsedJson['iconUrl'],
      price: double.parse(parsedJson['price']),
      change: double.parse(parsedJson['change']),
      sparkLine: parsedJson['sparkline'],
      btcPrice: double.parse(parsedJson['btcPrice']),
      rank: parsedJson['rank'],
      volume: double.parse(parsedJson['24hVolume']),
      marketCap: double.parse(parsedJson['marketCap']),
    );
  }
}
