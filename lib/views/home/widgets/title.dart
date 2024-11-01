import 'package:flutter/material.dart';

class BaseTitle extends StatelessWidget {
  final String? text;

  const BaseTitle({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: Theme.of(context)
          .textTheme
          .displayLarge
          ?.copyWith(fontFamily: 'RedHatDisplay'),
    );
  }
}
