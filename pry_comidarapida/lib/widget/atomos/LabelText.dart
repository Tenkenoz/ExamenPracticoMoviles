import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String text;

  const LabelText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
