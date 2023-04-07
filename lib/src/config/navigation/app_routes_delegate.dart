import 'package:beamer/beamer.dart';
import 'package:nhlproj/src/config/navigation/app_routes.dart';

class AppRoutesDelegate {
  static BeamerDelegate routesDelegate() {
    return BeamerDelegate(
      initialPath: '/',
      notFoundRedirectNamed: '/',
      locationBuilder: RoutesLocationBuilder(
        routes: AppRoutes.routes(),
      ),
    );
  }
}
