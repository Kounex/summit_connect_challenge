import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:summit_connect_challenge/views/home/home.dart';

import 'types/classes/env.dart';

late Env env;

Future<void> loadENV() async {
  String envString =
      await rootBundle.loadString('assets/env/config', cache: false);

  Map<String, String> envMap = {};

  for (final envLine in envString.split('\n')) {
    envMap.putIfAbsent(envLine.split('=')[0], () => envLine.split('=')[1]);
  }

  env = Env(
    env: envMap['ENV'],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadENV();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summit Connect Challenge',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(238, 0, 0, 1.0),
        ),
      ),
      home: SelectableRegion(
        focusNode: FocusNode(),
        selectionControls: EmptyTextSelectionControls(),
        child: const HomeView(),
      ),
    );
  }
}
