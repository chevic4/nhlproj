import 'package:flutter/material.dart';
import 'package:nhlproj/screens/card_screen.dart';
import '../enums.dart';
import '../models/models_json.dart';

class TeamsFavoriteScreen extends StatelessWidget {
  final ParamsToScreens paramsToScreens;

  const TeamsFavoriteScreen({
    Key? key,
    required this.paramsToScreens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment.spaceBetween;
    List<Teams> favoritecommands = [];
    // умней ничего не смог придумать))
    for (var j = 0; j < paramsToScreens.allteams.length; j++) {
      if (paramsToScreens.favteams[j] == true) {
        favoritecommands.add(paramsToScreens.allteams[j]);
      }
    }
    if (favoritecommands.isNotEmpty) {
      return ListView.builder(
        itemCount: favoritecommands.length,
        itemBuilder: (context, i) => Card(
          color: Theme.of(context).appBarTheme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            title: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardTeamScreen(
                      team: favoritecommands[i],
                      favorite: true,
                    ),
                  ),
                );
              },
              child: Text(
                favoritecommands[i].name,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ),
      );
    } else {
      return Center(
        child: Text(
          'favorite is empty',
          style: Theme.of(context).textTheme.headline1,
        ),
      );
    }
  }
}
