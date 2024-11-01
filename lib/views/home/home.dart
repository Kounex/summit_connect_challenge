import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:summit_connect_challenge/views/home/widgets/summit_background.dart';
import 'package:summit_connect_challenge/views/home/widgets/title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SummitBackground(
        child: Center(
          child: BaseTitle(
            text: const Utf8Decoder()
                .convert(
                  base64.decode(
                      'Q29uZ3JhdHVsYXRpb25zIVxuXG5Zb3UgZGVwbG95ZWQgdGhpcyBhcHBsaWNhdGlvbiB3aXRoIERldmVsb3BlciBIdWIhXG5cbkZsYWc6IHN1bW1pdC1kZXZlbG9wZXItaHViLWNoYWxsZW5nZQ=='),
                )
                .replaceAll('\\n', '\n'),
          ),
        ),
      ),
    );
  }
}
