import 'package:flutter/material.dart';
import 'package:practice_app/drawer.dart';
import 'package:http/http.dart' as http;
import 'package:practice_app/pages/log_in.dart';
import 'dart:convert';

import 'package:practice_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  // var myText = "Change my Name";
  // TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    fetchData();

    super.initState();
  }

  void fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.pref.setBool('LoggedIn', false);
                Navigator.pushReplacementNamed(context, LogInPage.routeName);
              })
        ],
        title: Text('Sweet Training'),
      ),
      drawer: MyDrawer(),
      body: data != null
          ? Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text('ID: ${data[index]['id']}'),
                    leading: Image.network(data[index]['thumbnailUrl']),
                  );
                },
                itemCount: data.length,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          // myText = _controller.text;
          setState(() {});
        },
      ),
    );
  }
}
