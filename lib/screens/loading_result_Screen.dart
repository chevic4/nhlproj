import 'package:flutter/material.dart';
import '../enums.dart';

class LoadingResultScreen extends StatelessWidget {
  final ParamsToScreens parametries;
  const LoadingResultScreen({
    Key? key,
    required this.parametries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (parametries.state) {
      case ContentState.success:
        return Center(
          child: Text(
            'good, coomands is loading',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      case ContentState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case ContentState.empty:
        return Center(
          child: Text(
            'api is empty(',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      case ContentState.failure:
        return const Center(
          child: Text(
            'Oops..',
            style: TextStyle(color: Colors.red),
          ),
        );
      default:
        return const Center(
          child: Text('NOT loading!'),
        );
    }
  }
}


// The supplied phased action failed with an exception.
// Could not create task ':generateLockfiles'.
// A problem occurred starting process 'command '/Users/chevic/StudioProjects/nhl_epic_demo/nhlproj/android/gradlew''
// Could not start '/Users/chevic/StudioProjects/nhl_epic_demo/nhlproj/android/gradlew'
// Cannot run program "/Users/chevic/StudioProjects/nhl_epic_demo/nhlproj/android/gradlew" (in directory "/Users/chevic/StudioProjects/nhl_epic_demo/nhlproj/android"): error=2, No such file or directory
// error=2, No such file or directory