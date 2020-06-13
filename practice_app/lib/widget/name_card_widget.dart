import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myText,
    @required TextEditingController controller,
  }) : _controller = controller, super(key: key);

  final String myText;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Card( 
              child: Column(
                children: <Widget>[
                  Text('Welcome to Vsport, Watch Live Matches',
                  textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 25.0,
                   fontWeight: FontWeight.bold,
                 ), ),
                  Image.asset('assets/Salah.jpg'),
                   SizedBox(
                     height: 10.0,
                   ),
                  Text(myText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(
    height: 5.0,
                    ),

                  SizedBox(
                    height: 20,
                    
                  ),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextField(
                     controller: _controller ,
                     decoration: InputDecoration(
     border: OutlineInputBorder(),
     labelText: 'Name',
     hintText: 'Enter your name',
                     ),
                   ),
                 ),
                ],
              ),
            );
  }
}
