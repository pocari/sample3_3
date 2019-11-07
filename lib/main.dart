import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation test',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('1番目のルート')),
        backgroundColor: Colors.red,
        body: Center(
          child: RaisedButton(
            child: Text('次の画面を開く'),
            onPressed: () {
              print("navigate next screen");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ));
            },
          ),
        ),
      );
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('2番目のルート')),
        backgroundColor: Colors.blue,
        body: Center(
          child: RaisedButton(
            child: Text('前の画面へ戻る'),
            onPressed: () {
              print("navigate previous screen");
              Navigator.pop(
                context,
              );
            },
          ),
        ),
      );
}
