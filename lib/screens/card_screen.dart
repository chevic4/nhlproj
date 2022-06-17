import 'package:flutter/material.dart';
import 'package:nhlproj/models/models_json.dart';

class CardTeamScreen extends StatelessWidget {
  final Teams team;
  final bool favorite;
  const CardTeamScreen({
    Key? key,
    required this.team,
    required this.favorite,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).cardColor,
              margin: const EdgeInsets.fromLTRB(5, 70, 5, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      team.name,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      width: 1,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "location - ",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          team.locationName,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'first year of play in great league - ',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            team.firstYearOfPlay,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 1,
                      height: 8,
                    ),
                    Divider(
                      color: Theme.of(context).dividerColor,
                    ),
                    Row(
                      children: [
                        Text(
                          "conference: ",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          team.conference.name,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 1,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "division: ",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Text(
                          team.division.name,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Franchise: ",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text(
                          team.franchise.teamName,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).dividerColor,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.star,
                          size: 150,
                          color: (favorite ? Colors.amber : Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'back',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
