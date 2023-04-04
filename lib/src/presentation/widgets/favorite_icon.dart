import 'package:flutter/material.dart';
import 'package:nhlproj/src/utils/const/colors_const.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final Color? colorfromTheme = Theme.of(context).textTheme.bodySmall!.color;
    return Icon(Icons.star,
        color: isFavorite ? colorCustomFavoriteStar : colorfromTheme);
  }
}

class FavoriteText extends StatelessWidget {
  const FavoriteText({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return isFavorite
        ? const Text('команда в избранном')
        : const Text('команда не в избранном');
  }
}
