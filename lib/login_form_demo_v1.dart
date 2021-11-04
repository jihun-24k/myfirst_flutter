import 'package:flutter/material.dart';
import 'dart:io'; // 유용한 라이브러리 글에 설명되어있음

void main() => runApp(RowColumnDemo());

class RowColumnDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(20,120,20,120),
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'hero',
                child: CircleAvatar(
                  child: Image.asset('assets/cat.png'),
                  backgroundColor: Colors.transparent,
                  radius: 58.0, // unit: loical pixel?
                )
              ),
              SizedBox(height: 45.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                initialValue: 'your_name@gmail.com',
                decoration: InputDecoration( //데코레이션 속성은 플러터가 추구하는
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                initialValue: 'input password',
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Log In'),
                      onPressed: () { },
                  ),
                  SizedBox(width: 10.0),
                  RaisedButton(
                    child: Text('Cancle'),
                    onPressed: () {exit(0);},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}