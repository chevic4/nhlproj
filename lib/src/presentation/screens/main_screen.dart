import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/domain/uscases/theme_usecase.dart';
import 'package:nhlproj/src/presentation/widgets/custom_button.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('main screen'),
        actions: [
          Consumer(
            builder: (context, watch, child) {
              var stateTheme = watch.watch(themeCustomStateProvider.notifier);
              return Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      stateTheme.setThemeDark();
                    },
                    child: const Text('d'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      stateTheme.setThemeLight();
                    },
                    child: const Text('l'),
                  ),
                ],
              );
            },
          ),
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
