import 'package:flutter/material.dart';
import 'package:nhlproj/screens/card_screen.dart';
import '../enums.dart';

class TeamsViewScreen extends StatefulWidget {
  final ParamsToScreens paramsToScreens;
  const TeamsViewScreen({
    Key? key,
    required this.paramsToScreens,
  }) : super(key: key);

  @override
  State<TeamsViewScreen> createState() => _TeamsViewScreenState();
}

class _TeamsViewScreenState extends State<TeamsViewScreen> {
  void faviTapped(int i) {
    setState(() {
      bool _i = widget.paramsToScreens.favteams[i];
      if (_i) {
        widget.paramsToScreens.favteams[i] = false;
      } else {
        widget.paramsToScreens.favteams[i] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment.spaceBetween;

    switch (widget.paramsToScreens.state) {
      case ContentState.success:
        return ListView.builder(
          itemCount: widget.paramsToScreens.allteams.length,
          itemBuilder: (context, i) => Card(
            color: Theme.of(context).appBarTheme.backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardTeamScreen(
                            team: widget.paramsToScreens.allteams[i],
                            favorite: widget.paramsToScreens.favteams[i],
                          ),
                        ),
                      );
                    },
                    child: Text(
                      widget.paramsToScreens.allteams[i].name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      faviTapped(i);
                    },
                    child: Icon(
                      Icons.star,
                      color: (widget.paramsToScreens.favteams[i]
                          ? Colors.amber
                          : Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case ContentState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case ContentState.empty:
        return const Center(
          child: Text('teams is not running'),
        );
      case ContentState.failure:
        return const Center(
          child: Text(
            'Oops..',
            style: TextStyle(color: Colors.red),
          ),
        );
      default:
        return const Center(
          child: Text('NOT loading!'),
        );
    }
  }
}
