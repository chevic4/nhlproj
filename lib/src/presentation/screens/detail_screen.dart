import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/widgets/custom_button.dart';
import 'package:nhlproj/src/presentation/widgets/favorite_icon.dart';
import 'package:nhlproj/src/presentation/widgets/team_detail_info_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.teamData,
  }) : super(key: key);
  final TeamEntity teamData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TeamDetailInfo(teamInfo: teamData, isFavorite: true),
          Card(
            child: Row(
              children: [
                const FavoriteIcon(
                  isFavorite: true,
                ),
                const FavoriteText(isFavorite: true),
                Switch(value: true, onChanged: ((value) {})),
              ],
            ),
          ),
          CustomButton(
            child: const Text('back'),
            ontap: () {
              context.beamBack();
            },
          ),
        ],
      )),
    );
  }
}
