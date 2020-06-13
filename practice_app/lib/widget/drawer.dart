import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              
            currentAccountPicture: Image.asset('assets/vic.jpg'),
              accountName: Text('Victor Ogundola'), accountEmail:Text( 'Dvicxy@gmail.com')),
            DrawerHeader(
              padding: EdgeInsets.all(20),
              child: Text('Channel Lists',
              textAlign: TextAlign.center,),
            ),
            ListTile(
              leading: Icon(Icons.nature_people),
              title: Text('Name'),
              subtitle: Text('Ogundola Victor'),
              trailing: Icon(Icons.notification_important),
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Name'),
              subtitle: Text('Chukwu Chigozie'),
              trailing: Icon(Icons.location_city),
            ),
          ],
        ),

    );
  }
}