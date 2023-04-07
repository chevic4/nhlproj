import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/domain/models/team_entityes/team_entity.dart';
import 'package:nhlproj/src/presentation/screens/favorite_teams_screen_nested.dart';
import 'package:nhlproj/src/presentation/screens/teams_screen_nested.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<TeamEntity> teams = List.generate(
      30,
      (index) => TeamEntity(
          id: 1,
          name: 'name ekndlewdknweq s lqkw',
          venue: VenueEntity(name: 'name', city: 'city'),
          teamName: 'teamName',
          firstYearOfPlay: 1982,
          divisionName: 'divisionName',
          conferenceName: 'conferenceName',
          franchiseName: 'franchiseName',
          officialSiteUrl: 'http://www.sjsharks.com',
          active: true));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          TeamsScreen(teams: teams),
          FavoriteTeamsScreen(favoriteTeams: teams),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'teams', icon: Icon(Icons.assignment)),
          BottomNavigationBarItem(
              label: 'favorite teams', icon: Icon(Icons.star)),
        ],
        onTap: (index) {
          Beamer.of(context).update(
            rebuild: false,
          );
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
