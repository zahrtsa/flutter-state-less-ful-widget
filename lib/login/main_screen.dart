import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../first_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 85.0,
              backgroundImage: AssetImage('asset/img/killua.jfif'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Zahra Tsabitah',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 31.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.indigo[200],
                  fontSize: 12.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.white,
              height: 20,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            Card(
              color: Colors.deepPurple[200],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone_android,
                  color: Colors.white,
                ),
                title: Text(
                  '+62 89621239559',
                  style: TextStyle(
                      color: Colors.white60,
                      fontFamily: 'Source Open Sans',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.deepPurple.shade200, width: 3),
                borderRadius: BorderRadius.circular(40),
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.indigo[900],
                ),
                title: Text(
                  'ev.tsabitah@gmail.com',
                  style: TextStyle(
                      color: Colors.indigo[200],
                      fontFamily: 'Source Open Sans',
                      fontSize: 20.0),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.indigo[200],
                  ),
                  iconSize: 50.0,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen(),
                          fullscreenDialog: true),
                    );
                  },
                )),
          ],
        )),
      ),
    );
  }
}
