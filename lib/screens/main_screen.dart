/*
import 'package:flutter/material.dart';
import 'package:nhlproj/models/theme_state.dart';
import 'package:provider/provider.dart';
import 'package:nhlproj/screens/home_screen.dart';

import '../api_service.dart';
import '../enums.dart';
import '../models/models_json.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ParamsToScreens paramsToScreens = ParamsToScreens.initepage();

  void oneItemTapped(int index) {
    setState(() {
      paramsToScreens.numberPage = index;
    });
  }

  final ApiService service = ApiServiceImpl.instance;
  final teams = <Teams>[];
  Future<void> load() async {
    setState(() {
      paramsToScreens.state = ContentState.loading;
    });
    final response = await service.getTeams();
    if (response.hasError) {
      setState(() {
        paramsToScreens.state = ContentState.failure;
        teams.clear();
      });
    } else {
      setState(() {
        paramsToScreens.state = response.result!.isNotEmpty
            ? ContentState.success
            : ContentState.empty;
        paramsToScreens.allteams
          ..clear()
          ..addAll(response.result!);
        paramsToScreens.favteams =
            List.filled(paramsToScreens.allteams.length, false);
      });
    }
  }

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ThemeState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'national hockey league teams',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          Switch(
            value: state.isDark,
            onChanged: (value) {
              if (value) {
                state.setDarkTheme();
              } else {
                state.setLightTheme();
              }
            },
          ),
        ],
      ),
      body: HomeScreen(
        parametries: paramsToScreens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'favorives',
          ),
        ],
        currentIndex: paramsToScreens.numberPage,
        onTap: oneItemTapped,
      ),
    );
  }
}
*/