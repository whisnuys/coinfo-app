import 'package:flutter/material.dart';
import '../constant/theme.dart';

class CryptoTile extends StatelessWidget {
  final String logoUrl;
  final String cryptoName;
  final String cryptoNameExt;
  final String price;
  final String percentage;

  const CryptoTile({
    Key? key,
    required this.logoUrl,
    required this.cryptoName,
    required this.cryptoNameExt,
    required this.price,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(
            logoUrl,
            width: 36,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cryptoName,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '${cryptoNameExt}/USD',
                  style: greyTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${price}',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                width: 64,
                height: 25,
                decoration: BoxDecoration(
                  color: kGreenColor.withOpacity(.10),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    percentage,
                    style: greenTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
