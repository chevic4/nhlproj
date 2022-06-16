import 'models/models_json.dart';

enum ContentState {
  initial,
  loading,
  success,
  empty,
  failure,
}

class ParamsToScreens {
  late int numberPage;
  late List<Teams> allteams;
  late List<bool> favteams;
  late ContentState state;
  ParamsToScreens.initepage()
      : numberPage = 1,
        favteams = <bool>[],
        allteams = <Teams>[]; //homepage
  ParamsToScreens({
    required this.numberPage,
    required this.allteams,
    required this.favteams,
    required this.state,
  });
}
