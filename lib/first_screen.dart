import 'package:flutter/material.dart';
import 'package:sign_in_flutter/login_page.dart';
import 'package:sign_in_flutter/sign_in.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test app")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageUrl,
                    ),
                    radius: 30,
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 8),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    email,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Zindagi barbaad ho gaya'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Stand up Comedy'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Center(
              child: FlatButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }), ModalRoute.withName('/'));
                },
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue[100], Colors.blue[400]],
          ),
        ),
        child: Center(),
      ),
    );
  }
}
