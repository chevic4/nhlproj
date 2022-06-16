// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:nhlproj/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeState(storage),
        )
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(builder: ((context, state, child) {
      return MaterialApp(
        themeMode: state.theme,
        theme: ThemeData(
          dividerColor: Colors.grey,
          cardColor: Colors.white70,
          canvasColor: Colors.white,
          backgroundColor: Colors.black.withOpacity(0.95),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black.withOpacity(0.95),
              fontSize: 18.0,
            ),
          ),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.95),
            ),
            headline2: TextStyle(
              fontSize: 28.0,
              color: Colors.black.withOpacity(0.95),
            ),
            headline3: TextStyle(
              fontSize: 24.0,
              color: Colors.black.withOpacity(0.95),
            ),
            headline4: TextStyle(
              fontSize: 18.0,
              color: Colors.black.withOpacity(0.95),
            ),
            headline5: TextStyle(
              fontSize: 14.0,
              color: Colors.black.withOpacity(0.95),
            ),
          ),
          scaffoldBackgroundColor: const Color.fromRGBO(244, 244, 244, 1.0),
        ),
        darkTheme: ThemeData(
          dividerColor: Colors.blueGrey,
          cardColor: const Color.fromARGB(255, 60, 50, 40),
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white.withOpacity(0.95),
              fontSize: 18.0,
            ),
          ),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white.withOpacity(0.95),
            ),
            headline2: TextStyle(
              fontSize: 28.0,
              color: Colors.white.withOpacity(0.95),
            ),
            headline3: TextStyle(
              fontSize: 24.0,
              color: Colors.white.withOpacity(0.95),
            ),
            headline4: TextStyle(
              fontSize: 18.0,
              color: Colors.white.withOpacity(0.95),
            ),
            headline5: TextStyle(
              fontSize: 14.0,
              color: Colors.white.withOpacity(0.95),
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.yellow[100],
            selectedItemColor: Colors.yellow,
          ),
          scaffoldBackgroundColor: const Color.fromRGBO(11, 11, 15, 1.0),
          switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all(Colors.yellow),
            trackColor: MaterialStateProperty.all(Colors.yellow[100]),
          ),
        ),
        home: const MainScreen(),
      );
    }));
  }
}
