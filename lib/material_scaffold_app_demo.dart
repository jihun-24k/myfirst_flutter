import 'package:flutter/material.dart';

void main() => runApp(MaterialScaffoldApp());

class MaterialScaffoldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "머티리얼 앱",
      home: Scaffold(
        appBar: AppBar(title: Text('진짜 머티리얼 앱')),
        body: Text('근데 이제 Scaffold를 곁들인'),
      ),
    );
  }
}