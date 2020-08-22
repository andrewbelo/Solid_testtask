import 'package:flutter/widgets.dart';
import 'dart:math' as math;

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Color(0xFFff8c00);

  void changeColor() {
    setState(() {
      color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => changeColor(),

        child: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
                color: color,
                child: Center (
                  child: Text('Hey there!',
                    style: TextStyle (
                      color: Color(0xFFbdf268),
                      fontSize: 40.0,
                    ),
                  ),
                )
            )
        )
    );
  }
}