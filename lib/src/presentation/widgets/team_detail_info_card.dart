import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/widgets/text_large.dart';

import 'outlined_card.dart';

class TeamDetailInfo extends StatelessWidget {
  const TeamDetailInfo({
    Key? key,
    required this.teamInfo,
    required this.isFavorite, // изменю цвет карточки
  }) : super(key: key);
  final TeamEntity teamInfo;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextLarge(data: teamInfo.name),
          TextRowBody(title: 'сайт: ', body: teamInfo.officialSiteUrl),
          TextRowBody(
              title: 'год основания: ',
              body: teamInfo.firstYearOfPlay.toString()),
          TextRowBody(title: 'адрес: ', body: teamInfo.venue.city),
          TextRowBody(title: 'домашняя арена', body: teamInfo.venue.name),
          TextRowBody(title: 'прозвище', body: teamInfo.teamName),
          TextRowBody(title: 'конференция: ', body: teamInfo.conferenceName),
          TextRowBody(title: 'дивизион ', body: teamInfo.divisionName),
          TextRowBody(
              title: 'играет в настоящиее время',
              body: teamInfo.active.toString()),
        ],
      ),
    ));
  }
}

class TextRowBody extends StatelessWidget {
  const TextRowBody({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$title $body',
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
