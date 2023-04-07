import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/widgets/favorite_icon.dart';
import 'outlined_card.dart';

class TeamShortInfoCard extends StatelessWidget {
  const TeamShortInfoCard({
    Key? key,
    required this.teamInfo,
    required this.isFavorite,
  }) : super(key: key);
  final TeamEntity teamInfo;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              teamInfo.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              teamInfo.venue.city,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            trailing: FavoriteIcon(isFavorite: isFavorite),
          ),
        ],
      ),
    ));
  }
}
