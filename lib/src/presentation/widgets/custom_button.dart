import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.ontap,
    required this.child,
  }) : super(key: key);
  final void Function()? ontap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(onPressed: ontap, child: child);
  }
}
