import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:summit_connect_challenge/main.dart';
import 'package:summit_connect_challenge/views/home/widgets/summit_background.dart';
import 'package:summit_connect_challenge/views/home/widgets/title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SummitBackground(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width / 7,
                    right: MediaQuery.sizeOf(context).width / 5),
                child: BaseTitle(
                  text: env.env == 'prod'
                      ? const Utf8Decoder()
                          .convert(
                            base64.decode(
                                'Q29uZ3JhdHVsYXRpb25zIVxuXG5Zb3UgZGVwbG95ZWQgdGhpcyBhcHBsaWNhdGlvbiB3aXRoIERldmVsb3BlciBIdWIhXG5cbkZsYWc6IHN1bW1pdC1kZXZlbG9wZXItaHViLWNoYWxsZW5nZQ=='),
                          )
                          .replaceAll('\\n', '\n')
                      : 'Environment not set to \'prod\'!',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 48.0,
            right: 48.0,
            child: Image.asset(
              'assets/images/RedHatLogoSmall.png',
              height: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
