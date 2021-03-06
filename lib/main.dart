import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

import 'digital_clock.dart';
import 'stop_watch.dart';
import 'timer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  runApp(
    const King(),
  );
}

class King extends StatelessWidget {
  const King({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, canvasColor: Colors.white),
      darkTheme:
          ThemeData(brightness: Brightness.dark, canvasColor: Colors.black),
      home: Scaffold(
        body: PageView(
          children: const [DigitalClock(), StopWatch(), TiMer()],
        ),
      ),
    );
  }
}
