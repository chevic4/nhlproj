import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/di_container.dart';
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
              final controlle = ref.watch(themeCustomControllerProvider);
              //   var stateTheme = watch.watch(themeCustomStateProvider.notifier);
              return Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controlle.setDarkTheme();

                      ///     stateTheme.setThemeDark();
                    },
                    child: const Text('d'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controlle.setLightTheme();

                      ///    stateTheme.setThemeLight();
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
