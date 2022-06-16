import 'package:flutter/material.dart';
import 'package:nhlproj/screens/favorites_screen.dart';
import 'package:nhlproj/screens/teams_screen.dart';
import '../enums.dart';
import 'package:nhlproj/screens/loading_result_Screen.dart';

class HomeScreen extends StatelessWidget {
  final ParamsToScreens parametries;
  const HomeScreen({
    Key? key,
    required this.parametries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (parametries.numberPage) {
      case 0:
        return TeamsViewScreen(paramsToScreens: parametries);

      case 1:
        return LoadingResultScreen(parametries: parametries);
      case 2:
        return TeamsFavoriteScreen(paramsToScreens: parametries);

      default:
        return LoadingResultScreen(parametries: parametries);
    }
  }
}
