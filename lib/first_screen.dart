import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../login/main_screen.dart';
import '../dice/main_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 275.0, horizontal: 25.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                iconSize: 110.0,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                        fullscreenDialog: true),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 275.0, horizontal: 25.0),
              child: IconButton(
                icon: Image.asset(
                  'asset/img/diceweb.png',
                  height: 500,
                ),
                iconSize: 110.0,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                        fullscreenDialog: true),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
