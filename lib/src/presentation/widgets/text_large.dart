import 'package:flutter/material.dart';

class TextLarge extends StatelessWidget {
  const TextLarge({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.titleLarge);
  }
}
