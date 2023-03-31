import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/presentation/screens/favorite_teams_screen_nested.dart';
import 'package:nhlproj/src/presentation/screens/teams_screen_nested.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          TeamsScreen(),
          FavoriteTeamsScreen(),
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
