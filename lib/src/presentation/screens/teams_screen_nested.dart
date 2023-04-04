import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/config/navigation/names_routes.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/widgets/team_short_info_card.dart';

class TeamsScreen extends StatelessWidget {
  final List<TeamEntity> teams;
  const TeamsScreen({
    Key? key,
    required this.teams,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: teams.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.beamToNamed(
            NameRoute.detailTeamScreen.path.toString(),
            data: teams[index]),
        child: TeamShortInfoCard(teamInfo: teams[index], isFavorite: false),
      ),
    );
  }
}
