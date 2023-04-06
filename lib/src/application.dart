import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/domain/uscases/theme_usecase.dart';

class Application extends ConsumerWidget {
  final BeamerDelegate routerDelegate;

  const Application({super.key, required this.routerDelegate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeCurrent = ref.watch(themeCustomStateProvider);
    return MaterialApp.router(
      theme: themeCurrent,
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}
