import 'package:coinfo_app/constant/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
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
              Container(
                width: double.infinity,
                height: 198,
                padding: EdgeInsets.all(defaultMargin),
                margin: const EdgeInsets.only(
                  top: 32,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
