import 'package:flutter/material.dart';
import 'package:load/load.dart';
import 'app/app.dart';
import 'common/widgets/loading_widget.dart';
import 'services/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(LoadingProvider(
    themeData: LoadingThemeData(),
    loadingWidgetBuilder: (ctx, data) {
      return LoadingWidget();
    },
    child: App(),
  ));
}
