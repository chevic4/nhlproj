import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nhlproj/src/presentation/widgets/custom_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('main screen'),
        actions: const [
          Switch(value: true, onChanged: null),
        ],
      ),
      body: Column(
        children: [
          const Text('hockeyApp loading info & errors'),
          CustomButton(
            ontap: () => context.beamToNamed('/home'),
            child: const Text('go to app'),
          ),
        ],
      ),
    );
  }
}
