import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Navigation test',
        initialRoute: "/",
        routes: {
          '/': (c) => FirstScreen(),
          '/second': (c) => SecondScreen(),
          '/third': (c) => ThirdScreen(),
        },
      ),
    );

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('1番目のルート')),
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text('画面2を開く'),
                onPressed: () {
                  print("navigate next screen");
                  Navigator.pushNamed(context, '/second');
                },
              ),
              RaisedButton(
                child: Text('画面3を開く'),
                onPressed: () {
                  print("navigate next screen");
                  Navigator.pushNamed(context, '/third');
                },
              ),
            ],
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
              Navigator.pop(context);
            },
          ),
        ),
      );
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('3番目のルート')),
        backgroundColor: Colors.green,
        body: Center(
          child: RaisedButton(
            child: Text('前の画面へ戻る'),
            onPressed: () {
              print("navigate previous screen");
              Navigator.pop(context);
            },
          ),
        ),
      );
}
