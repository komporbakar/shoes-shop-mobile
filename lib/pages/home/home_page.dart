import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';
import 'package:shamo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halllo, John Doe ',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  '@john.doe',
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes',
                style:
                    primaryTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleTextColor),
                color: transaparentColor,
              ),
              child: Text(
                'Running',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleTextColor),
                color: transaparentColor,
              ),
              child: Text(
                'Training',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleTextColor),
                color: transaparentColor,
              ),
              child: Text(
                'Basketball',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleTextColor),
                color: transaparentColor,
              ),
              child: Text(
                'Hiking',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProductsTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget popularProducts() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Row(
              children: [ProductCard(), ProductCard(), ProductCard()],
            )
          ],
        ),
      ),
    );
  }

  Widget newArivalsTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget newArrivals() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: const Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArivalsTitle(),
        newArrivals()
      ],
    );
  }
}
