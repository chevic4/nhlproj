// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';

class FavoriteTeamsScreen extends StatelessWidget {
  final List<TeamEntity> favoriteTeams;
  const FavoriteTeamsScreen({
    Key? key,
    required this.favoriteTeams,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('favorite teams list'));
  }
}
