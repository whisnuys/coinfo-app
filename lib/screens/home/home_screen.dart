import 'package:coinfo_app/widgets/crypto_tile.dart';
import 'package:flutter/material.dart';
import '../../constant/theme.dart';
import '../../widgets/crypto_card_portfolio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Text(
            'Have you invested\ntoday?',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 22,
            ),
          ),
          const Spacer(),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_search.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_scan.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget cardBalance() {
    return Container(
      width: double.infinity,
      height: 198,
      padding: EdgeInsets.all(defaultMargin),
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/image_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your current balance',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_eye.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '\$385,142',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_upload.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Deposit',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_download.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Withdraw',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_history.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'History',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget myPortfolioTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Portfolio',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'See all',
            style: primaryTextStyle,
          ),
        ],
      ),
    );
  }

  Widget myPortfolio() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            const CryptoCardPortfolio(
              cryptoName: 'BNB',
              logoUrl: 'assets/logo_bnb.png',
              amountBalance: '\$47.99',
              amountCrypto: 'BNB 0.095203',
            ),
            const CryptoCardPortfolio(
              cryptoName: 'ETH',
              logoUrl: 'assets/logo_eth.png',
              amountBalance: '\$92.345',
              amountCrypto: 'ETH 0.195203',
            ),
            SizedBox(
              width: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }

  Widget tradeCryptoTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Trade Crypto',
        style: blackTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget tradeCryptoFilter() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 33,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Name',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 33,
              decoration: BoxDecoration(
                color: kBackgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '24h',
                  style: blackTextStyle,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 33,
              decoration: BoxDecoration(
                color: kBackgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'My Portfolio',
                  style: blackTextStyle,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 33,
              decoration: BoxDecoration(
                color: kBackgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Market Cap',
                  style: blackTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tradeCryptoTile() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 50,
      ),
      child: Column(
        children: const [
          CryptoTile(
            logoUrl: 'assets/logo_bnb.png',
            cryptoName: 'Binance',
            cryptoNameExt: 'BNB',
            price: '528.373',
            percentage: '+1.82%',
          ),
          CryptoTile(
            logoUrl: 'assets/logo_btc.png',
            cryptoName: 'Bitcoin',
            cryptoNameExt: 'BTC',
            price: '33,257.78',
            percentage: '+2.35%',
          ),
          CryptoTile(
            logoUrl: 'assets/logo_eth.png',
            cryptoName: 'Ethereum',
            cryptoNameExt: 'ETH',
            price: '954.221',
            percentage: '+1.82%',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            cardBalance(),
            myPortfolioTitle(),
            myPortfolio(),
            tradeCryptoTitle(),
            tradeCryptoFilter(),
            tradeCryptoTile(),
          ],
        ),
      ),
    );
  }
}
