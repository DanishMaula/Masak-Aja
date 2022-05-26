import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',
        style: TextStyle(fontFamily: 'lato',
        color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Hero(
                tag: 'logo',
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
                  ),
                ),
              ),
            ),
            Text('Danish Maula',
            style: TextStyle(fontFamily: 'lato',
            fontSize: 22),
            ),
            // make a list of settings
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.add_moderator),
                title: Text('Account Security',
                style: TextStyle(fontFamily: 'lato',
                fontSize: 18),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Manage Notification',
                style: TextStyle(fontFamily: 'lato',
                fontSize: 18),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('Help',
                style: TextStyle(fontFamily: 'lato',
                fontSize: 18),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.exit_to_app,
                color: Colors.red,),
                title: Text('Logout',
                style: TextStyle(fontFamily: 'lato',
                color: Colors.red,
                fontSize: 18),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
