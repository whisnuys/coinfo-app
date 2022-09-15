import 'package:flutter/material.dart';
import '../constant/theme.dart';

class CryptoCardPortfolio extends StatelessWidget {
  final String cryptoName;
  final String logoUrl;
  final String amountBalance;
  final String amountCrypto;

  const CryptoCardPortfolio({
    Key? key,
    required this.cryptoName,
    required this.logoUrl,
    required this.amountBalance,
    required this.amountCrypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 236,
      height: 147,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                logoUrl,
                width: 36,
              ),
              const SizedBox(width: 12),
              Text(
                '${cryptoName}/USD',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amountBalance,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      amountCrypto,
                      style: greyTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                'assets/image_graph.png',
                width: 85,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
