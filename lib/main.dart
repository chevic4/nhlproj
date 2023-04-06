import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nhlproj/src/application.dart';
import 'package:nhlproj/src/config/navigation/app_routes_delegate.dart';

void main() {
  final appRouteDelegate = AppRoutesDelegate.routesDelegate();
  runApp(
    ProviderScope(
        child: Application(
      routerDelegate: appRouteDelegate,
    )),
  );
}
