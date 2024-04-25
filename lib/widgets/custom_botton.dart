import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
    this.icon,
    this.onPress, {
    super.key,
  });
  const CustomBotton.named(
      {super.key, required this.icon, required this.onPress});
  const CustomBotton.optional(this.icon,
  [this.onPress]);
      
  final Icon icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      child: icon,
    );
  }
}
