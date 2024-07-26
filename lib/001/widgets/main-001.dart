import 'package:flutter/material.dart';
import 'button.dart';
import 'currency_card.dart';


class Main001Widget extends StatelessWidget {
  const Main001Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Selena',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100.0),
            Text(
              'Total Balance',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 22.0,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              '\$5 194 127',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'Transfer',
                  bgColor: Color(0xFFF2B33A),
                  textColor: Colors.black,
                ),
                Button(
                  text: 'Request',
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const CurrencyCard(
              name: 'Euro',
              code: 'EUR',
              amount: '6 428',
              icon: Icons.euro_rounded,
              isInverted: false,
              offsetX: 0,
              offsetY: 0,
            ),
            const CurrencyCard(
              name: 'BitCoin',
              code: 'BIT',
              amount: '6 428',
              icon: Icons.currency_bitcoin_rounded,
              isInverted: true,
              offsetX: 0,
              offsetY: -25,
            ),
            const CurrencyCard(
              name: 'Dollar',
              code: 'USD',
              amount: '428',
              icon: Icons.attach_money_rounded,
              isInverted: false,
              offsetX: 0,
              offsetY: -50,
            ),
          ],
        ),
      ),
    );
  }
}
