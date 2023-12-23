import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cheeckout_card.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Checkout Details',
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        // NOTE: LIST ITEMS
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Items',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
        ),
        // NOTE:Addres Detail
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address Detail',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icon_store_location.png',
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon_line.png',
                        height: 30,
                      ),
                      Image.asset(
                        'assets/icon_store_address.png',
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Adidas Core',
                        style: priceTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        'Your Address',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Marsemoon',
                        style: priceTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        //NOTE : PAYMENT SUMMARY
        Container(
          margin: EdgeInsets.only(top: defaultMargin),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Summary',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2 Items',
                    style: primaryTextStyle,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff2E3141),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '\$575.92',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // NOTE: CHECKOUT BUTTON
        SizedBox(
          height: defaultMargin,
        ),
        const Divider(
          thickness: 1,
          color: Color(0xff2E3141),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: defaultMargin),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/checkout-success',
                (route) => false,
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Checkout Now',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
