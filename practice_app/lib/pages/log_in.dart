import 'package:flutter/material.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/utils/constants.dart';

class LogInPage extends StatefulWidget {
  static const String routeName = "/Login";
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  // static const String routeName = "/Login";

  var formKey = GlobalKey<FormState>();
  var _userNameController = TextEditingController();
  var _passWorldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        fit: StackFit.expand,
        //To ensure the stack fill uu the ui
        children: <Widget>[
          Image.asset(
            'assets/summ.jpeg',
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.cover,
          ),
          //Box fit ensure the image fill up the stack

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _userNameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              labelText: 'Username',
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: _passWorldController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Password',
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            onPressed: () {
                              Constants.pref.setBool('LoggedIn', true);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context)=> HomePage()));
                              Navigator.pushReplacementNamed(context, HomePage.routeName);
                              //This will perform similar tasks like the above navigator code.
                            },
                            child: Text('Log In'),
                            color: Colors.orange,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
